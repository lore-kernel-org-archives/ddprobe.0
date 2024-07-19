Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41B85A20
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721356554; cv=none; b=OGZIE7vXdhpSh7Cpxb82gKmXd186l5oArDR9bKCtyhw7BpggB6lC3UL6nnVCESGT7Fkgx4T2GzXMHCYLg2UBFBIrpDFOeQExwn5YvlyhmBA3kEHSD2FQ99xUXvYegXoImfKbTBt8QjPzbVbihTSYmerS2NSGg2/Rwp9UmyIyNF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721356554; c=relaxed/simple;
	bh=Gbupfz3+Rz0SGBbeMMphvzwxYAY0XNefDFLIvUExCas=;
	h=To:Subject:From:Message-Id:Date; b=Nstb1PKbgs/02wlHYGfdDTdMM98qYLeBnMyjovUARjPCgJw3W7VTrx8dDqNnSL9dVSNS7Y0PWDiidHbkvBlUmRxiaa/u0EtZ73IlS6w7fY2JhbEnh0hiQZ9HzmY9ANnL4Gu3LY+CxDMKIyJ+4sl+IlQpcz+I0h0CAyy1whKBiCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgX6TucL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kgX6TucL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE3A7C116B1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721356553;
	bh=Gbupfz3+Rz0SGBbeMMphvzwxYAY0XNefDFLIvUExCas=;
	h=To:Subject:From:Date:From;
	b=kgX6TucL86VTNbuM62rGfHU7d7i1tu1blXsY7BaC8qQMdCSJS3NqjGZdTzpGImVwM
	 Y1/KBfFRyppZLSfZaP5TiZ10zVuqvvu4mKOLMckBrJVqnrlKlcK0gPJ0wecNn3RbhA
	 HCmaVZUGZvb2xfrkggRLXuKcnhijiRjHXdoiARXEt3z22qsqpAZQILnqX0qCV1zT58
	 5iTGyE1KTUFef0omKjYsc0YOImU/T8NPpYQ0nsuymBEsBiniFEDHvap6hGui97kEs9
	 g3omMHnjq9CrnF97l7A2m/tR9zxvvSn8uReQ56jyxaE7veiDaWpeg9XKwiUnCz2aI3
	 iSQvT0qqVTojg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2EC3DA49
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172135655360.22526.15382243682750218046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 173d0f89bee03c01cec98f305aff6463eeaea2096349eca6250a58907c591137
Date: Fri, 19 Jul 2024 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721356553
