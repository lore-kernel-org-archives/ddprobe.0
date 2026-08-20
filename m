Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4AD384CF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787203234; cv=none; b=VAcA/y6qWCY3nukpHoBUuH9RakXK+GsgscI7tLg1eSQhQeeK4oINOfnEMyNt3sE/fEZ+Yb77OZvzKKEoe1WgEiiciyraUAUX2oOIEgKcN4siZXUvA5lVNrAs86OGxnOtrD7FvsZL1ZZQsEd+209+sG/SH3PTN/yq/5VZS4kzfTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787203234; c=relaxed/simple;
	bh=RFf1mkxYgMTWJgaPr8qo5Qyn/0d99KV1vCapHIPeDso=;
	h=To:Subject:From:Message-Id:Date; b=GMYm2IR6VdNY/LfLFC8YJM/L3eoPwBR5sn7es1RIvNdRQ3P0WrfOd5svFJQkqiZkH3IbQDFiBoUv0cSwHFte0pxVigT710Mk0+3kJIj06G81dhsQtH3GTd7r30OhZY8qZtom/cXFO8nMxDL3HUV+3ZHMmxh4FBn513IcMQwjn90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZByTWJ1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZByTWJ1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD230C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787203233;
	bh=RFf1mkxYgMTWJgaPr8qo5Qyn/0d99KV1vCapHIPeDso=;
	h=To:Subject:From:Date:From;
	b=YZByTWJ1TzEGruase5fJMgaX401GZ5XOzN1ACatphPul8BGDO8OZduXvXHDbJR3ix
	 uWbAcT7BCvx8jFFPF4c2nuZe2MNAu7rbPlFCqli3Nz27FEwy3z9bw4MW7aZGwxHUs/
	 bh+dRLOg2WcRf70vOXEdKBB7VbtdSboHV8iX7qJApECE0OnfPNq1EcQQINKJhzHXHz
	 e1/PGRidcj7uAXfVvCqoqByF2uSqgTCtZOeYa3czOPApC1ztDRGvizBehLrGhHLsyI
	 ivo0ATDLXCu03n3gH9lfOjfrgyJOYmgiEQ9H1a8jlnznXeqqg4bZjzF4Bg1j0yh+Gk
	 VIQcueeMseQ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A994BC5DF85
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178720323368.11670.199024672026163723.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c7c50be911063c1776e12e5aa21d8799f6955bb02cf38cdd99e5305e9328d20
Date: Thu, 20 Aug 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787203233
