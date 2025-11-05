Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BECA2BF005
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762323594; cv=none; b=O2ivbGX9SgqOFvPc2jiomFJS3V0BZ1bdlzSZCoGqbVWHteNv/POK3jFED9bqdb5lYc9XasG0kFAMI5GaoqeMa9Un9qNIU6uvISmouQcvcOdlPNAJuTlW0EXTgGFJZXp4D67sjYXheyFoPZT381Sog5xm5bdxcFmfslTeaHQJ76g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762323594; c=relaxed/simple;
	bh=jXcgs5dkwmUpsFp+qXD1VfzA7skTv16o5AV/YWlmOMY=;
	h=To:Subject:From:Message-Id:Date; b=GH/F79kkFJEmTOIVPUK0OHig6NR9CXnFrFaB8kweYqSlBMeznzu8AVu4cazK3sd0I1Fpyk0Hf7+CQhcxdql3XDQIRiOLYuv41Sfa1va+XAkuRfdu8ln2qwR7SD3mXObcId5QIqMxq1btqXykVhX9pBcAyWIavOeGzhO2ew3z9sg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q68et9++; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q68et9++"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5BCC4CEF8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762323593;
	bh=jXcgs5dkwmUpsFp+qXD1VfzA7skTv16o5AV/YWlmOMY=;
	h=To:Subject:From:Date:From;
	b=Q68et9++EQ4+T8fBMNMbde7AqXmJyW3iCcLqSyZJ5YdQxT9sUCRUCoRsPca8m6mzB
	 MOi4RUu5LXwO+NwEkGQAkpq7TFRz0FiZbJdGhynsyTQF9T+yH68fqc6EmG7C3qtY5z
	 sla4lNARqna7XwSJCe4V8VBodataRrqwAxr/e4rcDkZoRqTq2ObU85iKWO6hj7SwlR
	 6CkS/uIg8dEabw/c33JniQ/L+0QmQDFu2I8UUp8cC/FAGYI5UavBFQa2uh/uxdv6AI
	 B0X2kK1iq06XsgT99J3MyfG61zWjRZ1WxXQsDw4Dq9jwcS1GNJSTP7hJCp7C6ZTBEc
	 40Rpm5rKMXs/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90727CCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176232359358.11067.4792847101754548707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b912952c06d20d9fa0616d537e1bb1b80825cb51d3fa3fd5ab7e9597fd5469
Date: Wed, 05 Nov 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762323593
