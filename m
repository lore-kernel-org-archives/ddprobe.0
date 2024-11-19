Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38345211C
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732017354; cv=none; b=ltXtzQlqNvcgKlUiOekPla3xJrf63UvAUSeI7P6LiEK1nltmtuA6MgflNhQMs0CdMNBzOExpBoOvj+U5Dn7rxu91eHtuvTcexgvpXhT+Io+ODRfz8tnqK9B6bOarckfIQ4VQbp1qM8YuNYHVErS1QBLABV9oGjdC/8KC7ox2lMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732017354; c=relaxed/simple;
	bh=7zqs3lX74lSYplTboGUSG2Yw0Yx9JhyQNBHbfPeOsHQ=;
	h=To:Subject:From:Message-Id:Date; b=oe/QTzOwddrapbCVGvvPO0OZyINV8fi+LHgeVQ69OAqf8aF9rtV4AbAHv56d2ZykZ9dEbEn58SjaNTczh8ZHZwU/vU8ccajDI1+oUcIkdHOYZJbQI7EPSKIejkfbd0B90Vn8VRX3ZtbKTk7XZEEtyIIu9CiDqMDfaB3bUSyqi7A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZ1Bjtr/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZ1Bjtr/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACA01C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732017353;
	bh=7zqs3lX74lSYplTboGUSG2Yw0Yx9JhyQNBHbfPeOsHQ=;
	h=To:Subject:From:Date:From;
	b=EZ1Bjtr/C2eRVL4rXQ6HvOGmQgfD0Bn+x/Qv9p/y+HZGdO4NawhNQ1WEHsOpyEAvY
	 IkIMGR+dKaP8IKCKkqzKK9Ljx1UUjqSLZSti9y5ivQJ/P8VdqfpGAjbf8ZgSAMT9o6
	 VSZLK1UId6CJdU4tS7iuBtGh7B5+bJvEN8Tp6IiGps+DIO0YNQdJhOtpyaSbe898jw
	 aw7XqCiZr1PmcqVltWz/jnNnXMQ2bhPN0giaNMSMf5adHAIrsgM4cvDFabULwBaw/Y
	 MdNJqxan1H8LQI5hu2UW78cZYIsXWuuK/NXNhSVUsnOdKlREz1hw6TJCSBD1565agB
	 401J2qPX+JpLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F0CD4414C
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173201735359.15238.12841536942854181686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0fd474f7b5b625d21ad33cf1fd4a703e2045cc24856b2fe25ebd9564b8b0146
Date: Tue, 19 Nov 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732017353
