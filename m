Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A2073DA5B8
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784881835; cv=none; b=pRKxg55dA3xQt+CZf/99enViXx/75z2U6FeVZOXLLuavvWS9yfRFjTKokNRVrPeu+KZA0ty65bJ025U1oEY9CC0np5t7/XW1xUsiPPW7DOfF2FcgrD4NO2Vkme+pMXI6wsbyxlPEaWD8W8NXGMPSLMpvSopR0RoAZS9hVVptifk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784881835; c=relaxed/simple;
	bh=kT2AoWOWfr2flEANtFOkk3Bj+MHFOFWxsPJh16fqig8=;
	h=To:Subject:From:Message-Id:Date; b=CGkOwtFbCjPFFQx/pthMhJP5RulzQa7GlLFSSZMfrzFf7e4Mf360XnPAUS+YMQi0rLc32TOEBcuUsoXyABnHEUubStMfw9lcD83ymQjX6WJ5EBVeYLS29GOSMML7BzJs9+DVUQ3TVv93fzhmqUiFEEtO41kbVs0JALfZXzC9StQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLxACypS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLxACypS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2CCC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784881833;
	bh=kT2AoWOWfr2flEANtFOkk3Bj+MHFOFWxsPJh16fqig8=;
	h=To:Subject:From:Date:From;
	b=VLxACypSZbF8TCaYNS4Omw3BJ40UrZpKjILJFJEKx7gK5JCjmcjN1gNQcoXjacgSZ
	 t51fvmNNZjSloRNYVm3e47XX/X6SXM1+w122Fw0bncjTeemSTF8lSRcp+pyClU2Hrr
	 yuJPfk37aL9ZrbRcW6DLBwkNGE/zIgyJIdDBpdVtgzR8OgfnmMLe8gkzBKhS37jrLe
	 mKCOdLNr3htcj4K+fH1pPW4NcjoV9AKAyxkWxVBVt0g+erXn7gbV6HoZ+PeFjG75QH
	 mzG0q4wGSVlJuCELBJaQ+RCHdpaKrPlGlZd3sKbutnR0q++rR+4SLdDVEi7Zh52vS+
	 90WIgjKbRNnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8BC3C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178488183368.12708.8839275034969151371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c0c49daa3169ec414ca831992c39fe77dd2c7be933c71fa826b07d2f7bd03c0
Date: Fri, 24 Jul 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784881833
