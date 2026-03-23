Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214175464D
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774227894; cv=none; b=HL6aENMa0y4u9iJHg5boEZF30q4fc6C5SlsZE6b4Mn2fOV/8CpP+GPv2DFtN62oUBujm4YJ7Qu9yMqqdpK1GBUQJNePMePNPZX2tw4fxWkL1YMKu5/dkiv5XOTJnRT9BAZ4r9wZOIcbzHdEWrT0dxXCOlAdTwWDXp6+UGUoOv5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774227894; c=relaxed/simple;
	bh=qeFf27uCVjwbCUzt4BfP89AYsP8xlZNI3DLGCrp2n0g=;
	h=To:Subject:From:Message-Id:Date; b=vBH85CM25LDlrpVyqtjnDBX5jI8qvxidrLiKle3Q8RD+VpCEiQuX/yRTdMekjD2P5hyn4FgWk0rxfti3OFjnRp1TSac+Hgk8BtoZaC2BfWgYb39V03POeTWfSL7lW0PqLf8a/gaWi3qRT2cMbCMsOlNZrnOVFOMr0VA+PgKiUcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XyCN5rVw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XyCN5rVw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC646C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774227893;
	bh=qeFf27uCVjwbCUzt4BfP89AYsP8xlZNI3DLGCrp2n0g=;
	h=To:Subject:From:Date:From;
	b=XyCN5rVwTd3oKLV/gMRz/2Efs0eOOnVemubWOWCARfbTNwg0cxqC0xsoDviU8M+UP
	 Bj5pGL+y7seJeHzz/wD9+1kYCSosOISVbRLPi5noImZeSlSl6zvoW9a6J5jMoo3wUA
	 l9AjEN9qpJuyqL0bjB3ekiPVi7CDtfKLasDQmp7BBceuYJjuZ5s1um4NAvInNnBjJl
	 b0zTqondOPSPWfakGA0gc6btwUdukF1t7K18Hm6UmSjogm1fdZU7ycGWSjtjNkQN0K
	 pawIB5kJ9JH6e+ehm7hy5TOOjps5G+EPnW+AeyufqSC6w09XI9bP665l79324pbaYs
	 +O5iDkkqt46ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A829D58CBD
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422789359.19689.5093880273085326484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 062794ca817f0ad43a3b677704e1e7a274faa01ba4dfb7ada2668d31b8c86fd6
Date: Mon, 23 Mar 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774227893
