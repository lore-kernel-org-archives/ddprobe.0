Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 836A4F9E8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779235834; cv=none; b=nYC+qnf6WQ2nkCuZZk8sQo+acZ05ondWs1BvIg+WNmYBB68VUA9OSUIWONg5QOErh3R9hzo+ps3sjE3+ChfLh9N+rruZWXK65TieGc7hvu+3oVBqKVddpp4drO2ejiXmmul9LJE5tTVr1znFNEPvygLIevfWREM9kFJcX3GeP9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779235834; c=relaxed/simple;
	bh=JWqvGw+WfV087GzefOhBMYRl0BPhA6xxMMaz3+pXw3A=;
	h=To:Subject:From:Message-Id:Date; b=BIlStxSpAGwz6TFcC7Gdg6FheHQs6r92fI+4VCyKyp9tcpglZ94sN8nh7MBZ1MJBG0hS4FAPbfo5/fse/HrKGj0HU4/36b9ho+xWA5jAkBclyOikXzwm6CScMIzambIW4KuO0qihNLdKoHzfUMXQRfcxhBzsGqeLoeSbzIN/K4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXqY1+eP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXqY1+eP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C21EAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779235833;
	bh=JWqvGw+WfV087GzefOhBMYRl0BPhA6xxMMaz3+pXw3A=;
	h=To:Subject:From:Date:From;
	b=kXqY1+ePDfkFvlHjIkt7wEmlhLYgdZyoRcqYagmV0x/64DuRQRMTI+WcAYXgdHk6z
	 E9KBTs8dRF3Yb8B5Luwjdk+rc2/o4wbI14t7S59CcqSSVux4NO0UXuP7fE10pbIqbC
	 iEYGpXZ9r1Y6rNmFetDNzX3UQr1chqWCyXOAXFhywRcBycV7rlwRA3MfzhxtcHzd50
	 kK196vf4nLgXsa83BO4Ka8kCTcTr8Te0h+EixNdLj0jSHsjal/xVhP46kAWm/aQHi/
	 8ziTj5+Bt/cavd8SvcDCDf2LiE7ylWUuhzRw3znuCVSCnRfZFpYiw7W8vNCMmDDRQG
	 ERf8ipXiTOmUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB806CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923583369.20976.15511012601727033459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64681e52bd486259885711c0bc224e8bf11d228ee75be4266a09a9c57cae3aec
Date: Wed, 20 May 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779235833
