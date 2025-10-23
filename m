Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162A74502A
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761182398; cv=none; b=Jlmt8VsFQg6iLCgm0PCTijbDxGurfpeyb/Zn8hbDn7rzmUUHqtUvvKlHN/6bvcaL41IeQ/HeV6MG/y8ubDLKAhmIJMhgBQo51791x9hrrITWUyRzi9O/EE5rnEHk1dEKmvaOFNk59DssEpLPRKUmVg1TbfJcOLYXO3G2uuxFNWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761182398; c=relaxed/simple;
	bh=bO96KVZpRqP2DF9CM7PHExEHPAERhN4xZOlWTTbwnjU=;
	h=To:Subject:From:Message-Id:Date; b=Z3ItIZWFWSb3P/8n5kfxIHlSsI0DbUjPC9Zd0iiZeateT46mP/ScJ7dqIk0NkTay2JOVd871gfww6mPy7tgwv5cjHtd7K4PV9NsEIR6NPrKq1xub04s2Pz829uOZ+EE0AhJLzOZgFixR1JS7/WPVv9jbIeL8mY6In5kPXwGZ8Aw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eCUTwpI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eCUTwpI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A417CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761182393;
	bh=bO96KVZpRqP2DF9CM7PHExEHPAERhN4xZOlWTTbwnjU=;
	h=To:Subject:From:Date:From;
	b=eCUTwpI+0EVUdMQET1A8UeMlzxrsVIrPE+Zc/+9SzJDHSmMwkNIs1daSiqZRu0zki
	 B2NpKdGG1lhhqfsLCfXEvNUzcUJY2UQh3pnjix8CNRhRo0Hc8h8gpHLNPbKUeF/XBp
	 ATB07ncZ6tea4FUPumQrHlqTGWaMvdembI94FRyLka6NEQucWnskncVHJd/wuqrF7v
	 c98WfLRKXUvd2+tHk+SEfFIfkzqYbBe4c8oviykmVdix/FHHI7cYiQ4syWWYPJ4Ey4
	 AqtSXQjtVuc05B89zKIpZOmz1SYxzjNLo7xjd/6eUqWjQOB1i25QtgsqR84E3efGvw
	 u65tVXrVB6z9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F0FCCD1AB
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118239358.4739.8998711666452388345.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29142c29099ad035a0fd8e012d302fbbc2a4a1766ca3fce3ce25af200368ab03
Date: Thu, 23 Oct 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761182393
