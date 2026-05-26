Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3C13BB12C
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779828154; cv=none; b=pJ3rZmRq/nHt59GNonSrMrHeQQHi15tAJc4iqCxOoyvt8vAavQ9BWB2t+gOTtkz05P0Wd14WaakkteVq7KCoJjTsxbtx4ulWah+x+RkPXSkfyrRb2PS5e6LE8vdR30Hsn1mNtpytl4Ub7tQjWYykk158frY6I8Uz95M14BR8q88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779828154; c=relaxed/simple;
	bh=7SmJyQaNMlRKugFVNHipn0wQGgLvxEfDJ1fDcNjHPYA=;
	h=To:Subject:From:Message-Id:Date; b=Q4AJNtB8qqUI86OCQK30eppKlbNIvvRKbKqRMOqbidAR91Ty97HxwCgzXk1VZkT18abD/C6dQQATSzpFj7xIUd37Vz+ZUdIeSL7jga0IoemCqg75ZJa1osd9YPK9SeD8YPNMQsa20YrRogvyQ3k3O3uhLDQP69Itm7ieAW6+4b4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cB8SGalS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cB8SGalS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3AC6C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779828153;
	bh=7SmJyQaNMlRKugFVNHipn0wQGgLvxEfDJ1fDcNjHPYA=;
	h=To:Subject:From:Date:From;
	b=cB8SGalSRM0qQ+uoTiqSmwi+oVGZ2glK+gbtS0xKh8RyNlKjHiYbUXg0mraeJCBzM
	 DoPjTWej42NhX4dcyk68T1qYjN2WmEbep8Hj8+uRmuyXWuL3DNSQckG1+aA/azncwj
	 HLu8OGDWb8RvMTFcvFoGMNW5P7Fh9JqkBDnOdhWy/DRh06es528+5jroGkMZuSLULN
	 uVmpQXRLkqN+CGkygkHONTRuSfL7lK5B0TqsDggCIdPaMGCIe8pBREK8OnLSHszHEr
	 1+hpE6GWOPWVV/vuHtWizH/GDmYj05RtkdNZlEijlpzb2ivN4ppyM+rFFtggYOK9+2
	 vAl5K2xpjLGAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A960ACD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 20:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177982815368.28423.1037802109198059553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c844813c2c77e07b99b6e25b425b3227f29fed5310e35eb00eb55d884dfefec9
Date: Tue, 26 May 2026 20:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779828153
