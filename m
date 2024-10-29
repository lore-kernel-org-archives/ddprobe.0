Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10459204035
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 11:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730202354; cv=none; b=PnKs6Deiyx6r+YDZGBD+iUqOdaN47qjiKve9n7uaqvVma/nwo1yfrKBk1HVG3FYu3TwVsnFZ0u3Pz3kRSlhwZOezOLK5GEbxUtf+Y6/1bscVQynG8uKXYsGEUXXKtk5iTNElHH0C7xYPuhhGAPuxcU6vtBiCalDlyhArcVYvsQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730202354; c=relaxed/simple;
	bh=xrQXx9/gAUTyF6FCc3DR/w1Gz+YMUsGqCSHpvrRH1w4=;
	h=To:Subject:From:Message-Id:Date; b=NJ49uTFf5iEskvIGhLzAmeHaFt+FIneUdYqmd12TNXYpScFJevRrSHP/H+xS3s5r6nmD4D0kV8i0WRo0aucRlq9peJKzVpvbLUpTW7Onh7MxVn29ANYUkL4Z4j7j7cJx6wu/J4Htvzpr0CMkn2c5sKqckVA53EnMigqgNtQp+YQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KdP4M1nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KdP4M1nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2554C4CEE5
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730202353;
	bh=xrQXx9/gAUTyF6FCc3DR/w1Gz+YMUsGqCSHpvrRH1w4=;
	h=To:Subject:From:Date:From;
	b=KdP4M1nmHE48uj20lhZIi93wg5K+1d9GFyuBOhMwhjtkbJ3+xPJsyQFL+r0xDEXtW
	 v3fNhmzjt5Jup4dciyTUtlkP8sTAghZ/zwg8vGIpgmB2mOJrimtY4YB8ex7ylSIbuZ
	 eLSjPGTuPy5544iiv7nYrXptOFrMzCXA2020KVCtsebu/S1uazIJQk5Zvll1ExyIEc
	 laHEm+6+rT9DrkRPWxZT0u3mnU6nAMmUHuezp3o0fNykf5TIWuSDnvDwmDpdacVHA8
	 YPLSArQykCsIBmk/uKMKhawxIs1X+IEx93oLD+jJvpAgH68qmSOzM39u/TbyTNhl5O
	 vd4453KTsURhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D58D2AB20
	for <ddprobe@lists.linux.dev>; Tue, 29 Oct 2024 11:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173020235362.6173.4252854411240832582.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55438c563525009e3fc7442803841c1a92b079fc22f7d5032c0661ed5722cca2
Date: Tue, 29 Oct 2024 11:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730202353
