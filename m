Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7A4A1F0E25
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743625793; cv=none; b=l1xKIRA8ebwa5Zkjwa2U7tnteQepqZvY4Q/9eHMRB1OsynKHnHbZ/9DOImNNdqreAN13Ua4T2j7indZlC7px+UVWrzNnoeTYS57cpUYuID4XCeEfpIAHp2D60+4cDbP8gp3YVohap3X+5yYsGp/7Kuxn5cUsD/jxk5T8v/BlbcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743625793; c=relaxed/simple;
	bh=pgkNxsAhRZWeulIc6xzZQw/hgr5UQ9yAUtk7e36AhV0=;
	h=To:Subject:From:Message-Id:Date; b=FzKR8dmAkPcRJM9d7YXldCDd9Z7JuL5Cs3gIfkwYUQmZfJe0lBCzsJx6AwhwZV2d6r37JPB1Q3gKO95Mxf2kTUI0fOEiby2jDQmgNwZptPL16hoy6ePtbS9+QlibzxowOAE8cvmXUGI+wD3etTLlNWXZg7g0Uly4jWMK5VwDrec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZlzevCaD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZlzevCaD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96EFC4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743625793;
	bh=pgkNxsAhRZWeulIc6xzZQw/hgr5UQ9yAUtk7e36AhV0=;
	h=To:Subject:From:Date:From;
	b=ZlzevCaDJlmFeEhDwOciDhddiz+0VY9pIIclnfWLMRGvFRgDMZbl4hqOdN01nE0PJ
	 RXfLlRUtjZPTuplSNoxLsB27CfZtI0LAnYbhD8jTSBP4rHwqV6r5g9H/JFkBUmJ20p
	 W/fBtmIen1Ew86RSpViL4Yp9FlRtD8QPv2523VzM+bNnn2dUwK0u4Di/ivTX8fN9OL
	 FWNJhXAHxLZhD720jcgqL7np3PoBeZ/3QJjDwqDR4+p+kzRnPCi3xnHcyc7yjCVs6s
	 yLzlU9mouQG+TDOsg+x3vmZ+pAlXUavQIueJWvJ1xauTna0yHSn4bIma6969LmZYrM
	 tkjfyUWPzxvSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98974C3601B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362579361.16207.11189941824493610448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75b1c955285d6cc420bcfaf1a8026328624a2383591acf3d37f82ae6609a5c7a
Date: Wed, 02 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743625793
