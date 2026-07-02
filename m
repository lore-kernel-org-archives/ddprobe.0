Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385A3431E52
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782962914; cv=none; b=i3+X/OE9PpH+4B7v7KIlgfU2Rd2AtKI9WgvVr9CFuN6pyliEuBc7M18IoDQTf1N2Ego51q+pmYNTAI3//L7U6q+9+HtiU9H/Zi6BWb6Bd0dBxdPDglOTQ6MbUu8t9tNOVi9V55/99bH8+h88G6/Pd29Qv6/ttYIFGqUUBGYHpL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782962914; c=relaxed/simple;
	bh=8b3qJDtlGN3J+oAzyBPtuTUHPBb+cjcFQ6tbmaJ0V0s=;
	h=To:Subject:From:Message-Id:Date; b=iDP/VrqYRNKtyQ1LrkfkVlD04V4mCRMYteoiZ4ITAQjj9Ju3FruTk7sjtE1cd/R2sTLJAUAuCKRtVO8FbSqaz6WsZNm2BL/TRjxxYUhB4oxRX8tQjgIBjtRJFXeDJCQn6SIu9p0KkQBy4MYgtWqO9VgTS/Qy9ZDSFK4GsF2hsNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nholIrkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nholIrkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB5B1C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782962913;
	bh=8b3qJDtlGN3J+oAzyBPtuTUHPBb+cjcFQ6tbmaJ0V0s=;
	h=To:Subject:From:Date:From;
	b=nholIrkfMuSMuTXLDHybIlKsXOnWrKHCefpL6Rp41T+Q/r48FDKxGP5JRFo5BFc0/
	 VPa5BhZXhKHiilRfn4YiIElCOKNwZ9YEluQC0chrmDQkYUPVtV8KaBi65YhPBGb8B5
	 V6K9dp96bGEEdI24bxkNNHCYUZPtV7m41rfFXL/yfvzenAomQ34l4AIw64w43BirHn
	 sIaNPsrF/NoypABWQQMMuV5NZ3GWZHixUUBTaD0hyD1cnPFpTKVDXHRAx8pHbxv2Dl
	 FzHpYrOGdXqsZHJkWB2xoKbWjc2hUoXou0Xce/49u/VXMLJGYd6wBr81I6rK/YrEmi
	 TSNcNRJUd2SLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93B3C43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 03:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178296291368.24201.11765894745235010084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b111c90831be05fc0f5dc50044f3e1ba635063142fe0db5b2a135c423ce88d8e
Date: Thu, 02 Jul 2026 03:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782962913
