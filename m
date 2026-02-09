Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2652D3803DA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770662634; cv=none; b=GB9xoOeHk2n8kjNmmCnnxBc82UkDAdEPVhk3a3hMu1oLuKNuqTWjiHYn8TubuwDblBZECEZhb0OLT+KzPuF4rb2jZZ21koUIlpyRM9Kd+GWdKXaWatZaWu4R4l9Cxw+oyt3W+G8CQTpzUsRNg5QOkewXOiZs3JAx4sssP5VRZFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770662634; c=relaxed/simple;
	bh=njV+kGs6EY+JJcPPwdod6/hofq0piJMcTnaqu1g1Hsc=;
	h=To:Subject:From:Message-Id:Date; b=TOWdc/SQpCW6wvS7V0BSjI+0Ro/ZeKk4SxLTCGV+XnbETfvte19AwILKb9DX+PE1oY81f4J/8urqtZDH8CxHcs0Y0o/+LMDWRzC3FEIKrq/s2TtlNsGFSlUXVq0OBquBBc3Azp+3iAdE4ZejnQsITaq5sv2wEGJ6xVIaO1QCMYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwjCVGbC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwjCVGbC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB99C16AAE
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770662633;
	bh=njV+kGs6EY+JJcPPwdod6/hofq0piJMcTnaqu1g1Hsc=;
	h=To:Subject:From:Date:From;
	b=WwjCVGbCh9wUZtKaXdI2m8xTPImFKUmOsFS+7gAwgFh/8Fw+74CSr6D0Cm+efhG3N
	 ZcVMAMNll3w84QZTOpU+YXeIKCRK48fe30h5Dvwxwk5NROImlctm5//st40pJ5tqFl
	 r4L3hUV8vQGBjAlsKg0tZYV4g3327iHhEdB4B36SjXwTgGLHnFmDjTRLrINswW7zPf
	 Npm6i94lI/K+RKaPA338B0UTWBLratZfrQzG8VUx1kC2tzsFsEDiEB53xSQzqB8P0O
	 MzYQ29paSR9gTNxTx1C+tDxooi/occVPdrEzKnfkdqjrSFnQCH8eN9pQKEV9immowR
	 sxOB3vofkap+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99559E7E0D2
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066263359.32601.2562893951466754330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39107acf97f96ca952a5e331799517258d9506f85c92ad5947ddd1efa75bf8a
Date: Mon, 09 Feb 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770662633
