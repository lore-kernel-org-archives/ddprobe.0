Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B4F17FE
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709688497; cv=none; b=moIjYR7zs9Ewr0lekh1JLSCcAWo/ZfqBafTipPQ8dPIMS0Bu6uUgJkqLFqi1dTeqhsO59b7tci1taJ9Hc2oZNWGzQbvO2aOIYrzTiMlebqBv9twYnJM7LVjclNl3Z+gDbh9I2N0XB1TflUsmqow+ewm8GYMl8ohfqoWXJDh4/6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709688497; c=relaxed/simple;
	bh=KL1sCGtr/fR8Rb8SGAAUZj+T7VcjlnkN4qqz8lM3d5c=;
	h=To:Subject:From:Message-Id:Date; b=PZX4YZhgaxirhtuwylTp571gSBGXpnJFpeM3ynLdAXpCdbrxRjCR3GGVCWJ28spZ9xtwzy2H05MI+LmGri2WWnzmrRN0QCx768ZSJCz0CxEeMAnm7tDxXtWAh1wArkkTCP82ekHHO8JxPOez7wC5ZA5LPfhyO4MJMuTGArShQhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diGzf5xm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diGzf5xm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8134CC433F1
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709688496;
	bh=KL1sCGtr/fR8Rb8SGAAUZj+T7VcjlnkN4qqz8lM3d5c=;
	h=To:Subject:From:Date:From;
	b=diGzf5xm93b2QnePRzHl0QCgsxn526ZLo/2bkB0f2fZJlF1xxH6jkeklMtA/dqhpd
	 eF0qzH9w4qMnzYLaz2ruD0KYUniIbHiL26AeXGtM4fHQ3cnZE8eS9tSCx7cwVhgA1i
	 uMV2EJ62YMundurHgnL6IcDmsr9Sbj6J7m0HJ5iroNf0j2+RHO0pBOs5T/wwbsik2o
	 8TfWRBfLwiUnnHf4yAWr4hfPF9W63QiQYNniqWwdfZ+GaGqxuiDXglHKOoURxrKu85
	 Z3T6xFrYPh3lM/NrFeL3wZyzphNJV1Hdw+JGmn5OdDZiHLUpFMUSf3JTQv3idi+xER
	 B8A41aQ430FHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61CA0C54798
	for <ddprobe@lists.linux.dev>; Wed,  6 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170968849637.6365.781258216682139533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e1e42510e4b3243af0329bedb79353b1aed84c74b5a8231826e016ffc3aff78
Date: Wed, 06 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709688496
