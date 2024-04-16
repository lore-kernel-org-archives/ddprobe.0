Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D511DFEF
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713272363; cv=none; b=nkVMaPI4dnusNit+iMzpPHt6prrxdcPUMTcguILazZIw5hcEF1LFrkwwWf87H0k0kd7GovZIKkZ7jAGmiW/Jwv33R+DHKymtEEFVvfR+MuwxGQgJLlpCtYGL8Xi2bo33VKba74xzlBKht/tWidWbH+ZA1QqvspzAdWUuDUzOfs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713272363; c=relaxed/simple;
	bh=oKg92lxahUoyBmlRJwO0DRM3Xu3a9Az06921eTeONxI=;
	h=To:Subject:From:Message-Id:Date; b=DuWFz4AhTfcUz75VWdt7oYydwPHlTVcVBN/hLZSoIki0nEu46VGhKSr/8guo4KXBvjI7nw0nPv8/e7KCZN6Yee3CkJmUdoNQtfaqad9MlE3QqB0Ax4cuq13iO1sSDxsYfKrOZGwzUpUmDdffpgGqubbP+VeJBQsbCIyWK3hgSWk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fv2AKTUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fv2AKTUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18FFC113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713272362;
	bh=oKg92lxahUoyBmlRJwO0DRM3Xu3a9Az06921eTeONxI=;
	h=To:Subject:From:Date:From;
	b=Fv2AKTUyDtDmvcw/qbPnnswFUUGTOCBEYAVPnF6Wg9m2tuR5+2bVSS98dw9BW0utc
	 KkO0Hq1vfNgVTyOtvSH8euIpi6ftDsxVZ/cewItsXYzWW9U3cVC4askPSlpUU50hj7
	 uMoimS64FdZhXgIsKVyIt6XPozYKfreMiDw149sPbFGaAhdQDkFUtdHxY4SaNi9+Ic
	 /OF6a6aN6DJG99JpiEumiNVkqDGYhiWkT5hFeQmu+4wbc0uM81DtijW+2My/+jRUCB
	 aD93LBkIQABBYezHqlp+xlFCjEWv8IzFHs+8F8VmbkuenRmfonhz81Q9AVzdbxmKa0
	 xQP3XRA1xv7BQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD995C4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 12:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171327236276.15720.5981272407256036191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd72b4b9a0edb5757fae6639954635967ee130de13048e7f2f707ffa0d61223
Date: Tue, 16 Apr 2024 12:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713272362
