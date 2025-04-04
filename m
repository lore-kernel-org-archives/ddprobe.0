Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34840198E60
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743791994; cv=none; b=KZR0xwfJl9AWZMRQhM8wplMMBtaz3xm933R2NVoWEMEDqWtWDBcVUyQt0rRa9J13an59yZL3QpiJrDs+tuOVTy9+b++ed80tyTH47WbElO1TtnDeohWyMV4kFWONhMh3hf2cXZiuKv+al7VlSqb2uzxY9+rArQJDZWouoelu7HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743791994; c=relaxed/simple;
	bh=jwEKBlUIuAszz3j1ORgb/tgV/cdM5O2RP0hnFvlxTkQ=;
	h=To:Subject:From:Message-Id:Date; b=QLPPVFfKs1yk/K4SAWC7dkLD+frdcjExcBPMIwsMsJqLbBQVnZGfwwN1z5wWSJEgspDYh3TvLlstPAcnlqeqCm5UZe1jvrQbr2S03kn2d8tITF8yk/yDOjTbu/Ie145g6/UPs8xBeMKJ9S5X6FMvm8CX+DBvaAkWjh7T+lfHvzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cstxbBJK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cstxbBJK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A694FC4CEE9
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743791993;
	bh=jwEKBlUIuAszz3j1ORgb/tgV/cdM5O2RP0hnFvlxTkQ=;
	h=To:Subject:From:Date:From;
	b=cstxbBJK1tjgJx9ldMFQfz7EIPDnsEaVI8kEWSNbrn/psWB6y4NShbk05XHnLVy8U
	 Evcl4CITBd9Uo23N5eVM1vyOVNhfyDjQFcykRn+YC1qoD4OXJqpfdRfg1QxFZ9ir/3
	 +5JZxaUKpmJFwtWtcrHHCeSSDHrJR6RU/vEYheuvuTpinGA9N6pXd34F3VLs3LjCMT
	 DrXcZJpAxKsBeZ3eDD4exBtRoy3vx3Vo+FDZh1jYm1LzGTsgdA1Oyjm7zDDSwCTB3z
	 piQzs3QgxMwvhOVeCUkQyhuSftWmK6sSF+KP9qxcsIzKcKC11OI4xdw0GPAI53wyzf
	 A0ewyHwPRnxlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A91C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379199358.3876.3763507223036883522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3a839fd4d1f9bc670e67006375dbdd1009f3e4e5288696fd7b4a8df2155ac9e
Date: Fri, 04 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743791993
