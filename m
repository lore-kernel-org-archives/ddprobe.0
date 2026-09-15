Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C834DC557
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789515634; cv=none; b=FaWuegLgewn0AOcIZ4RYYasyIeT5V9saKNhQMcUEI8sn0zPg+zVi6WN0ocW2QO6zlaDvgAslNW5Ug7OvH6Hdb9LwWgpUnx1fdPbbpLEY/aZNcI2FI+BOqzY43sjXtjIqXKeolp3yTy5lkzDf87XJUa04tiyRU+ih78k+Cwwc6I0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789515634; c=relaxed/simple;
	bh=o7qDvLUy1uNOcf2xJthDi8eiV6Xko5so+TpeIIjoA0U=;
	h=To:Subject:From:Message-Id:Date; b=hiSWuwIPD2BbIE2RzgDK8eIqyJKI+33IQRCHkwEhH80aNWo5AkWueabvyHhsOE+cn+HuQ2kXJMOAKl+++9Hz2aBOgrS19DDBJqfYRTqs1t8NkAl/q25pK+tMZHp79PRysoBBevsVS+nmhq0VHfWOmhoVfokXM24ojWqOZU1o470=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aIwmU/Rb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aIwmU/Rb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A7DC2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789515633;
	bh=o7qDvLUy1uNOcf2xJthDi8eiV6Xko5so+TpeIIjoA0U=;
	h=To:Subject:From:Date:From;
	b=aIwmU/Rbj33iWoXAGi5toHcxjEJ+phxzdcj2aFxw0sqSvteqdE83e4a3jbMuf+I0p
	 xbXVENgvhkQVaQ/ujLxER8sMbpYgODkF7xFytXkp+ziiIRzk5BOuhf+ChozYTD9evU
	 lvDyg/WlvwLT2Bq7QR4OpNefc8UKaIiuY92QwghsPEVVN4ducTXA2WuN+Ixo5n/9pn
	 ayTzYMZjBdxGR7MdHanpe80aL7cY60F3cQmEyuSFqcliPXryeIPVcK8UlA67ezQTMn
	 qyrlSK4TFoARwECzu4MrxQ/P1i7G5KAG0su11JGlZGGncb56CZcm2+6NGTQg5k+Rxk
	 Ulyjxs9HbcxCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E06C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951563368.25113.15270361930657398201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40628048a29851bb3264a961880ff6f357c76c56a91652bfd62c85e332e25a70
Date: Tue, 15 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789515633
