Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36D23B71AA
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789572635; cv=none; b=cepURKbooPhwzPUNibe7OEkjPtEJSUaOURzT4AX8CVwrlCVsp3v3NgQHFHQdHJvPqr0yXApuqn1AepQLHRS+XbU/aLTEGL74bs5CzSxdT7lAHUN6FRR+jQbCBfMMOqruvcwqVV7YRWUG6yH3gGEe5k51PifsSwssmXo8KE7dsY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789572635; c=relaxed/simple;
	bh=hq3BUy2tyLq1vltc8WldhMMNFmfMHpr1Ay+6ggQKLy8=;
	h=To:Subject:From:Message-Id:Date; b=t2rGd1C/8UJIAQZ/caSJ4Ycfr+8Yly1Y0AfYrmHYMK3wdAFPkozvDmFf/iaXrEc85Bvtz1FkBOOKPu+j+C932VNUVRHPWqeZi7K+eLfn2FUnRQLQqWyqLpIJAW1ILNEQKdiKF7I6Mmg5POUsaS1d1Ej+/b5hyAWZpQZKNRaGgtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5IO5goq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5IO5goq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E20C2C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789572633;
	bh=hq3BUy2tyLq1vltc8WldhMMNFmfMHpr1Ay+6ggQKLy8=;
	h=To:Subject:From:Date:From;
	b=q5IO5goqOcZvETNrYXvWEXlp9kKK4REg5aiqt7gWXuuo7Lk59ZlIiiqqXBXxmWASK
	 fpSFWnTQ2298jfrytqO2dccNqRy/9nJk0RSpKzr1VyaULiPV2/kP5i2JwJp6CFuVnV
	 UyzM5U9TLQXP2CZEeyyqPe9Bzao9twd34aMhabyfx+wqn0rUnzV8SclZO8+BsP+LD4
	 PMpltblWNEiYs6d0wHLtiogu5zGRjgPMu+3C6pKkTjmsr1+FboIlj7OLHDzr9zqhzY
	 DqlGBexGNyJUK5jGm+Rz6LSeXldDIjaHrqrUS3sQQccdJE8/6hrV5MMGmQR7jf3zf1
	 riEjkGXCyr+xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC0FC982C5
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957263373.5953.2099214077601684314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9542cc200591285a81e2de282b28754415c23067b7ec980dd33cd9b77963c9a1
Date: Wed, 16 Sep 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789572633
