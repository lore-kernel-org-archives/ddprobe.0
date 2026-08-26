Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC513C2D
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787727034; cv=none; b=NK7gohHQMQjxpfm6ddarqWq4N6lp9bHhiCG3G2TG52g0EMTHMC0Wi0wS4BcoQzplpeX/OiVds+EOeSaurRXpO2uyEuGgkDgEk1weYdtxVY5k1/zbTme9TD7F84TAEIhzD0VY6/qxG4+ycbF/Wu03f5zxi97s0xVQTm0cZkdGVy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787727034; c=relaxed/simple;
	bh=MoqHPsM4j0R5Cdh0lDCW0buqLMDBuaK6oZApQ4lGH6o=;
	h=To:Subject:From:Message-Id:Date; b=dTECkT1Ur9UFAegB1BATvv8M7XHDy+9ryJ2Cv4sxS6yT81IXzbDKb5kLAYFOZCnLpGwGDvJrcqK16U+2zkkrCR7AIBN2bIvTJPV5NMpr2PYHm9OVC6ZqBTqIUbO8niRYupiFDLMx5Geku4+OU9dplUKo7mGms4z6MhuL/ow79vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNtRxeeR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNtRxeeR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D36C3C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787727033;
	bh=MoqHPsM4j0R5Cdh0lDCW0buqLMDBuaK6oZApQ4lGH6o=;
	h=To:Subject:From:Date:From;
	b=dNtRxeeRo8yOmcVeZ8fXGmLaiNdNyaf6u9G11n61M7cOKA2ahRiSb5X5xWEoaZsCX
	 4uVHKvoltKdytY38yqnZheZk/y3t6ODkUo2cLZ4b2eY4d2C8qVKbHBIZA5bZht8ZSG
	 t52FXhOpX5a18CF4sraoiqAeTRbLu7kzMBEURSGkWuc1EvsZDPRAF3zzafNgTbh91G
	 YRAniBMhthrkgNXdY5wT33R5T5AHTHjCcrloYg3VNOLewkDlGwXiSEx0P+fswSlZjB
	 dCDBG3LQGrheIEAEhYynaYbzPMkXYrN5b3cKHWZbHORT4o2KdrUFav0v/2S61Vw8Q+
	 lgcs8Na3FOikw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD81C61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772703369.27837.11672730380092667851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d751cb273fd58aab002e3ae6afefcb94c7e9f7cf6441e1bbac13d5c54de57b3
Date: Wed, 26 Aug 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787727033
