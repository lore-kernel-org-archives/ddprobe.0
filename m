Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BBE63CF
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762178393; cv=none; b=on3c9+yLFYS/UN+q3byGcI4aHwgzci+D63pIN5qZdED0qMbYBOsXCVH1Ob73ItslyFspzesBOHz4OBzQNHswRw+zTUCuXs+/3dQvSMn8OBY9HfSlooMzIk1FfdmcupI00eoAT7jCw5aSYfWq04KXbxdIzj1rihUCU0r/oGp7KDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762178393; c=relaxed/simple;
	bh=YBSzeVt4XCfRXj4wQ4SVxVr11Rk6G+Sw554ZEFf2kLs=;
	h=To:Subject:From:Message-Id:Date; b=NMdUJ/K4ShsBlZtFkbpZ3iTX3Xo4HY8I4ubxai3XsigB/jUkfmSW7t6DonmMN5xkX8pMIHk+LxJPMIjemboNzgk7Gc2lSP/j3ov00hiK9XHMLdXi4xFxoSZvvxfMEI4VJw+AKgg10+arCy0Nf8I1Rop3f8Y3iL2lMOgbJfewp6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnoX2tAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnoX2tAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDEAC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762178393;
	bh=YBSzeVt4XCfRXj4wQ4SVxVr11Rk6G+Sw554ZEFf2kLs=;
	h=To:Subject:From:Date:From;
	b=TnoX2tARwoY/JHPHXx6bTaFh0JBuQKxIVLruWgYsJDhsgBa4+8KbzrwjwhCv7nrts
	 G93SyhzhP3emfHDX/ioONl0quEuHfOmqw1OtMzc8zVmBwotHCKaeSonWUowJH2T//V
	 IJOmMg56f8qX9ZVv9q3nMn/fnfvSHMX8I2SGTOn/QEtOxXk6ZWzbx1poRng/HWbiad
	 Wqhxs2++Rb4Gtk6X80ctvSWdW8w0yc9zrsCBJFmU/pg1dVeCbeznChfHDLrH7xd6kx
	 Wk+JdLywJEAsIoUhbunI7UYyOLOJiEg0eUqywSMofr4G7/k27SijnjGlZJLsVWtApu
	 NmIShRZfI7Wuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD4CCF9F8
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176217839357.9233.7213576336505204141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c99251b7621a5c02160601e0256c0f4e38615b70b26ffaf2b94e3c0227de071
Date: Mon, 03 Nov 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762178393
