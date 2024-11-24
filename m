Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2958A1F95A
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732436154; cv=none; b=svnIuFgaio2P9r+cf/yhW92wHlmiB2RdjxVO1cfz4bVieZgTaixtSRBN6DjL1At8vmtheh0nLCFB353BgbtHjyOpTjEkLiVHBommNKrjz6JghRFUegn14c4Sd4RgtT69HyKSP1IbyBmKsulUaReVx+5PiXCyq8RhYyhlORIb01M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732436154; c=relaxed/simple;
	bh=Xd7rVmA4xdixZ6n5j8WwAe1JqZwf4LgCBYNG52IwqN4=;
	h=To:Subject:From:Message-Id:Date; b=hPwfMhp+BVU6OPfaRtYCIkqpXlpfl7OPSoDVETTWAyAkHE3aIAumzUjBcHh7ityhD6ZLZ+u3PNXrdqWjOt1vRhc7TiC5d7MKOCwUrqww0/QkI8CfGXUxHlsI20k8BDpxD/3hMsQcn1p5vBxExb/lbYFZOZDuthXkn3rcB/HHF54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD/8L+uM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD/8L+uM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC12CC4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732436153;
	bh=Xd7rVmA4xdixZ6n5j8WwAe1JqZwf4LgCBYNG52IwqN4=;
	h=To:Subject:From:Date:From;
	b=KD/8L+uMrLDh6npkSLFKv1FudmxOQkuP+8a4zzD7l7Zmp9M0E1nAQh2SwxB5p66gQ
	 gMPIC4NfT5b4mZP6IPxCOa1B5E1mwyPYRA/SxEmkYgKgw5PpjO2ij012cFMMVOv53U
	 b/O3qa+ApUKazNCcktX2ac6kjRo25FkNvztsdYCClv3P2H14rEsgRqE+RcB5sXfKH+
	 iKFTNzG76Cuqa46Gx9o8n02B50t1QTvOo/F9QYIY9AWxocCrzquI52Wje4bt8Fj9iy
	 i6AyXgwDzDbkvQk3RjcJnIUnyotuZzIVsiF30MYstbyIzUnCA6xeDIoYQXcFvZ1nOg
	 eeOeDEhnpLWRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CB3E668A1
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 08:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173243615359.26492.2242535285053049032.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85bf158163d0f3b049bb950b2b45657f214c73844b5ef11cec78b6e124b3b023
Date: Sun, 24 Nov 2024 08:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732436153
