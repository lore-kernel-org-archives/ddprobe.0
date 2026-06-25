Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79F5F3446CA
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782426454; cv=none; b=AD9Y++SY1hRNMTAx2OuYhEomPu4wwIBbCh5CPKjcW6USrrvNGMJPOluu+LhjqJUUzLVYghPWDW4p3tTrbQiWsWCCvh4B9iEcevkT8+x79By7/RTzomLJsLFZ6d8RyfbzMM9yJBzWIhDqwyGEUwJCGsmEZnZczXhAvmTkly4d0As=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782426454; c=relaxed/simple;
	bh=M4fl1ApDlF4T4yBWjliqOJt5HnxKW3ErO4wiYV0thb0=;
	h=To:Subject:From:Message-Id:Date; b=l1exXxyB8vNTGdCyn2jdaLSgR3qsEz8quiDfWKJITfTy+qeK2E5OKSPRFD7Vq98Ozz5FQB6XGQeECZkmZmirQBDbOZVsD79PGAAgNupV/64WrSQ7ncLAE4Zvx3m6tB851PARRHpS+a4RjaQFll9taeJBiEnbOjXwc6lk54WnlPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eDwVLC3t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eDwVLC3t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 127E3C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782426454;
	bh=M4fl1ApDlF4T4yBWjliqOJt5HnxKW3ErO4wiYV0thb0=;
	h=To:Subject:From:Date:From;
	b=eDwVLC3tMKifWx/V8DvSKw8/BNQf+RUcADZqfXF1AsbE2Q8z+UZfvp/2eIZ0TDUGj
	 fAA8kv1kniQPH+ZZCyt9m766mZ66OgFmeRnotpc2MM8riHomBpyTA6DUmEgGPzi7iv
	 6mryvtwAayF4W1eetk6cuIhdO8Pd1PqIKXMaxh7PakHRbh/d5MVsOeQLH8PerX5omO
	 QWuR5jchVKqcDCIV+Go/VdtuYCwfQIYEyiut2eYwuO5G7R+EEtfHIjVJG4zuq/rPMx
	 q64vy2ceI9S3ajowjoRvuQXqJOJibNmgSbnUFbNS51pUaTNI/P95CGHlssjCcGK3IE
	 Sdg4ygoePvZyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCF27CDE00C
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 22:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178242645371.7855.12146899372473152692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c3aa7b2d446cd0ec7857847755fefe2547469fecb6b3423b84a380459c71ed4
Date: Thu, 25 Jun 2026 22:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782426453
