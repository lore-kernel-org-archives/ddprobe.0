Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A2D62F069E
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761337194; cv=none; b=UhDr7VavBfRNfA7FX2pO6C/RCQL1iWPx1UXdAz2y9kOHAjskgdKnMrjE4mZZay1Qk+cECBcXo2hQDJS/2sk1E98VdVwm5P6CURZTe0G2fUlTTysa9zuqo+tCmwLdF/VEZJb1l9pZQYADzaNyhDHBi+WVprZNLAqW4vYlhZ6p04E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761337194; c=relaxed/simple;
	bh=q85dFXgu2Jj7zT5Bgu5FiWVMEUyPE6lG5QzyEzChBrI=;
	h=To:Subject:From:Message-Id:Date; b=XKb7+J9bGeHRdtnpKQaQc8cyEDnjVx0KlS+s/IhKCTU+Qk6UC1glnSXC/mKyyQGN0ZBgASRGFQzTgCjwz7NUjb9KGc0dqUHPRSobTECFC2c536oAhaqINvLO2QPjD3SWCu0ZjhnOdG6hHWxIjKxsEVTG4f2DTBXdRwtaRGHtA0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2GiXc95; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2GiXc95"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1597C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761337193;
	bh=q85dFXgu2Jj7zT5Bgu5FiWVMEUyPE6lG5QzyEzChBrI=;
	h=To:Subject:From:Date:From;
	b=p2GiXc95fbhneMYZbZkAQmYReey+7CfYWDpdtIuRMTp9C3HH3iHAMTugKfqCoNCSz
	 H4Xc7dY274M3vf0oSp65JJEpjkQyfTifcy+O6wRRqDBViiedMDGbFsPV1Y15cE+wsW
	 aftriwnztnqoZwg1Wyd2s7u8iZWYhGetPKGQfU1DNSDbL/LkePONVkTNK61vjsD+ca
	 39+6oJWGFZQBtZMA5HUU66l7Pum4xnogj4lj5nVUlPl/f663PIrgoFTI+/4/p+coGP
	 1Rw0m5mflSM+lhvRBJXFjLsEgm6sdHZRNq97Me/oXE1nWjVw7xve6m5IFOMT+HEijX
	 TC1mEk9rliQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A98CCD1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176133719359.2146.4323457534706338700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 479978d64bb73748ed691079bbd3dd57d3859adce7da7d2bc4ad10f34586721d
Date: Fri, 24 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761337193
