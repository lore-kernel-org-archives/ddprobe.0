Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F277081A
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749425994; cv=none; b=sZeJU8agqlhS4AesiQccXydTi0qS7KpmIP6UIdwOKmr5oPw652gQUxdhtDdAnklOQZv8D1yQD1OWEsX3/aBdC9e1CoFP13IqVRHkA58dvQMDvX9hq1c5NH6+wrYKW6H+QSOvgxBMT3L/ov3LsEE7Pm+8FKzrLsmGF3PL+u4AB3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749425994; c=relaxed/simple;
	bh=UB+ZvczBrDFN8Jqvijz449Adk4Rm6NGTIRFaVr/KMpw=;
	h=To:Subject:From:Message-Id:Date; b=eEUQeFnjLWvvKmrKDq6bJpBK3gZO0IuNDXnhPodzwLU+A48K7t7QOVbqWsTgDdBzVXnfxJ/MO8B+mInnZ6vgerx92o+ob29GaMkp+FNuNr2jAvELe0A/F8hxAPR4ceCZCjdD/A9OV29KkixGalASRB/Fqi89K3Zb5l/ZAAyF0+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fcv62M92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fcv62M92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B63C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749425993;
	bh=UB+ZvczBrDFN8Jqvijz449Adk4Rm6NGTIRFaVr/KMpw=;
	h=To:Subject:From:Date:From;
	b=fcv62M92EQt2e44QvnUsJnW97P8oyQdeD7hdvmqnq46svIYFj1V55AQvEKDObisQI
	 226kqymR7C3YEhVhaBML+fOt6ZvOW4wncq4LN4qRAVZz8CScFaCxK51mD14SOKJhPV
	 lPEU36VgGn5kavGHdTEeoaI1WXfPqaEw6MqgZqq4LkBO35dZxk9pQCJtOOCa/mA7eh
	 2sbrX874jWm2KIEIMDSn8UJlktH19PT+dvh7g9DXJGKE9M7sCl8Ud9zlsM5xLx5GSD
	 y2lOxox6NnOltlT0NQRhgWEHjNLRDcbVG7TSNHslNxN8hH/glizM5nyqMEAUUo95vf
	 DPErjPz9If8Rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D65C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942599357.8050.2904776075675184773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ce18bc109c7c08f2e21fb958674889ee139d4be85443e0b06ac743b00f7c5b
Date: Sun, 08 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749425993
