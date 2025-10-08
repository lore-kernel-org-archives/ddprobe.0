Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1048624DCF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759930194; cv=none; b=b6wuu8n7pwKZWxLRF1Ar17FKketl53CYRjy3NQrVfSt1mg3OvfAP6dsvpLVH5M/TG+LyxeTZY94QIlRy5kO7p4gRIc6yrgbzmbaOqi2aTfLJTrnU549hLy8hgaqIYULrrf5BGhf2dAdYVYXQ6Sq9GUxVpd2so8UcNAX9+WYyU8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759930194; c=relaxed/simple;
	bh=wtoFpKgfjBFaYgGKB60+Ry2C+B3m9Ao1xAaa6HvkSGE=;
	h=To:Subject:From:Message-Id:Date; b=dVpmHCb4kDlLWk8avORtxoCO/NskdbHqzxW82d1zI02CLei9QGUEMOiUIUhD+hkENJMab+8Nrk7aLGuy6pwXxYruLdBJWF1bdStKmupiMR/JU6c+ogU+TGT93qovvnmST3ra7620xNunA7oJWDyHx684sin6UIfjfw8nQtOhFKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QvayO37c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QvayO37c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25DDC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759930193;
	bh=wtoFpKgfjBFaYgGKB60+Ry2C+B3m9Ao1xAaa6HvkSGE=;
	h=To:Subject:From:Date:From;
	b=QvayO37cdT/Xm1CNGVN2uNj5QMqpEEEhr7SfCFDyzwrmU2epOLJY9PXoxAfRw5cqR
	 L/THRQkss+5Ud/AtmRXnd5uudqDuad2yOslZHRdCy1U5TgW9LwZwbC7tLwyur45/xG
	 11YLbiz5ce7F5BayIXi8pZxawsqso3fneiwUSVm1J7OOA028BAzoyVBMdekg40rjme
	 FMJzORCGqPbcNaHSsw0wU995a4bxvNsZvo/ImKM34wT4W7DqrqbpuRRhFUYQg8xEdV
	 fTeZ39B6oLG1N6/u0JoVOQgakga/gmDGeK4BZ0ycqGbsxo+p1W92sZEWTB89IzEu/H
	 CxWWO84R8J7hQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91036CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175993019358.3492.2316924646688505207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c92f1ecc517fb9a09e3ebe4f6d85cddc9aee0774eee5339f4382bbf15d6598c
Date: Wed, 08 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759930193
