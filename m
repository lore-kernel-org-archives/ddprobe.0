Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6586C1396
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721540154; cv=none; b=r1ikUhk279Mj2zOnMHGefi8lZFn3jr+XEEU37eB1DFWj8a8FxtkanJX4VIYPlF0Ui13Ui3XJHwTsxKag6n+qefYYK//xfrNLTuTUjoIlMAVtyQX3oVnCCvanDX+0mdip1pY5+rqUPdNxoe7byozyvpindT2MZUF3zi71/DuproE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721540154; c=relaxed/simple;
	bh=ebCx5mP5aYj1uqrI/Ofwf2/15OfVrJnmnpd36320KBY=;
	h=To:Subject:From:Message-Id:Date; b=cM5KcZ+J10YlsUY97eWxKEdV4hK2Ug349O49OxzfoMiOKJyS2JNmKaJzJQNag7MH0YLgOwqrf37PqJ1vDMUIghRUTjDjFIo0ZQb+MdFLZGDs+tZzctyXJ4IEtovD/zjvsBka3YrnW5c1YjeELo1PNi3MVVhB1uSXNCK6Uery8+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViiWSgOL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViiWSgOL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EB6C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721540153;
	bh=ebCx5mP5aYj1uqrI/Ofwf2/15OfVrJnmnpd36320KBY=;
	h=To:Subject:From:Date:From;
	b=ViiWSgOLvCKkZMeklLYJ0bUKhZY1nx15kSl19P9iBByHve5oT/Cy3DStbPJl2JCHL
	 M0SPzvqKt1r50EXoGlgK+G3tdnE0h6n6ELla1e1fpEBOEldJqVIB4ymj6qXRNb7Buz
	 eUGqFLQZNyaSGdelxDILIDPYvaYG1L09/B3VoEIBOjV8W9rFyKK74GvLHipziQ5eFv
	 AH+BGk6RMLnlZxlpBsGtKtlo2L4SD2MXgUViZrBVVoD2i5dlzEXSe/Zlb+hsX3vzjg
	 JlPdZZXe5sCewfLeBWH1GgN/Xjic77DCgn29gSDhf8JGc9ZnRs/62aMX8xwVwgDxdG
	 q7OUkClNKLfHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A028BC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 05:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172154015360.11967.17947722152903334643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a46817551e6a1ca41d3b4750aff45860346637b470e8387c33362ebc12315b17
Date: Sun, 21 Jul 2024 05:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721540153
