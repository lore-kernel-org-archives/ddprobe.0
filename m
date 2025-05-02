Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAEA2AF14
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746190794; cv=none; b=B7H6lrlGdl7t2RBFIBmHibxBYxdbR++/itMMpgiJOFY4On87R9ix9J8H3uPfWpY7ob1jIXltDgVGNBA9WJ+4SdBJB4dBxIBXpxrHzDbHozxqQW30K6wO6OqegkO42ssg1vFpUR/EJrC3G+dkorIx272LdK872JnTaWD0y3jslYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746190794; c=relaxed/simple;
	bh=F0rIxxg+2nMM/ygB9qrtwDLSwvFLYZHsZaaoIGWWu50=;
	h=To:Subject:From:Message-Id:Date; b=CvgK5mC8MvH6yLKdO4cLMJP1NWK7UId6cUDup6iyn5wGQQQQSyh5uW8ISNowiEJZUgdwdaPyxhIusPgrN7+hp8EiEtXjhhM/qLh3dQvdFepuoUicNC23cl/2PLOXGspRwR4teS9LV1vU4+1EBtp5pefe5H2tS5uTN1RdbJ+YM/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VH7l90t/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VH7l90t/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E5C7C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746190793;
	bh=F0rIxxg+2nMM/ygB9qrtwDLSwvFLYZHsZaaoIGWWu50=;
	h=To:Subject:From:Date:From;
	b=VH7l90t/AwV7O8qrMx8BoJRll4APntiB0XefH7AFuRAxkaeZbBP3FPhm8IAdbbNmE
	 HrgMXpeO6G7dKiBta2w3H7hzj49QS4Pnpu47TcHHbo7IOZUh/OtjHqkltV8nRcb719
	 CfkmiwM8Gm/3eM7yngfP9i2QS0U27rUs9okSZ3ZKfeNhkh8z0B0L/9aooDf981d6EQ
	 ekE85evcrrNd1+e8AMkAxIAtlouYC5UP8V4o/Mi+hk+fTu+AyvkCg24y+oNxvTuE79
	 sC3zD3ERVbwuQu3+uuan3QsRas7JYEDMM8bH+i+oPiY2hehC6d7ouV39hCIgv7EbID
	 KPwgT6/HOt0xA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E13EC3ABA3
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174619079357.28435.7894295855371102245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab77873d3e8af96b31924c5d7302c24163f5e11d20ccfe9482aff6ace2c87347
Date: Fri, 02 May 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746190793
