Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53E624315F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783387114; cv=none; b=EWcXq1b/yhC2F168j2hGgoUs8c5zoZBXiqZWVf2jHeKKipcVIa0fOaICiSI/iKSaqCejidyOsVVXdAiHASQl59/hxoIIC6TyFxeW9HirehV5LkkcWq7mhmwGvSUbXHHr5oBWuvN1ma0MJQoJA7lRFOHTDxHKyMnHy1lpfZXFCeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783387114; c=relaxed/simple;
	bh=ygYglTLY6l/MoO2D9i9ilK28ALphD6WmZ8q4k6r/LrA=;
	h=To:Subject:From:Message-Id:Date; b=pHQXVi4H7CRnWO/qBsrPHaVsORH97qdB8D5rk3+D2Hv1EOQlO8MDRgIZz9ZwadkWhqOnUZHnuzc1VuI2yFGpQSGL8umjCis2YLdNWHTqZPPNynJi0SjX98YnRdU+q+k21ZEEB24WKra/H2qChF4ydKa4fxqxBa1BZ0BiDEap+kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BBOr3hyL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BBOr3hyL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1EDBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783387113;
	bh=ygYglTLY6l/MoO2D9i9ilK28ALphD6WmZ8q4k6r/LrA=;
	h=To:Subject:From:Date:From;
	b=BBOr3hyLoSmHwtw5DaQpQvni5fA/3YgqKLJQUaxKSsbzKOwK9+BhNKVJdjHJVNhsW
	 QnjaFNBmAobpFUhuttOwBQcgnBs6k4t8Mba5mUjdSCJPYCkSBS4B9MekB64+qcRIeI
	 lDQ99L8ROZjO0I7qt7/7af7ztqt5nnJjH4wW8SzdNkhGH6rhUBl+2CB5MnFPBOre20
	 YnAv/DPd3By1962Rk+O93+Iq28NgvbBHXVnAb1K8gV/qGT88cRcnVFqBmI9oqfdMzE
	 lvfSdd4SYhxvvFq5sL02Tj+JhiOeduq2lYBnGehsXx+gx+0/aKzp0lpN0NqsbnOQvY
	 oGdO5VNt0AUBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFBCC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178338711368.8211.6261914460243694103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce668b13225c36c258a9da8376be2cbad119bcac0e557c291c1f2d6fb345592f
Date: Tue, 07 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783387113
