Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E7121DC04A
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731020754; cv=none; b=YA61vcmTX1E5adI2cs0eWJ+ARJ1+PKlpo034bZrlwFpjtPcyf1WFkOG+VOq/1N9+tdytzyAeKr3RC37267QMPDvdom423dLs90ipL4jumMVGqUBI+FTcc/c+Zp00HufxiHsdB0Ob/8kmzY3i8gaIh1x/i6xGS2kuBA7F1+qY76s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731020754; c=relaxed/simple;
	bh=bUD5gVDEORdbUZ+gvKrbV5l5u6I2SKzzgx78haDAJhE=;
	h=To:Subject:From:Message-Id:Date; b=tnrNDVwOZDZczRPGaGpZr/ThloEUGw+GTvgkOeXamCeDccCOR1EIwLvNCvur/UVAz165ItqVRD2G6nab3pfqZ9oejFQAPBrxmyxryUFt6gde3KGIcliGnU1MdBnYZ/Y4F7TtXYHjLvf9pkolMNI0XlB92RWyE0ZlEjT2QIIBLdQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4d2wd3s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4d2wd3s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DE3EC4CECE
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731020753;
	bh=bUD5gVDEORdbUZ+gvKrbV5l5u6I2SKzzgx78haDAJhE=;
	h=To:Subject:From:Date:From;
	b=m4d2wd3sYny/aE/DGsbwCNdnlIOXfL5aiYZ1MpdznPFaKjncU/c8q8hN89Sg0y0PR
	 zh94WMrRJBH28rHTcw0zmbXaTR50xQXGTY0ItfE1YhstL6zuocubq9zpHU3DbQlA9e
	 4l9ouSfWjE8LnmOD4pzqVICUeydr7dBQlQ4qCe7x/gpzGimwWVcYfttobmBY7SYYoe
	 yXczzZtORsDFdmvRP5hMRmf3q8o8jbd/aC3Ix63ROR62YZ1JLkx2hHrIXZ+UwIGRm/
	 nppzgMpo1taRkFxIGlJdqL+Ad+5FjFe/PClf14fWIQL8Co9el88q4u23IkW85W5+Nl
	 ZrzBA9qUEBEXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F751D5D695
	for <ddprobe@lists.linux.dev>; Thu,  7 Nov 2024 23:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173102075358.12595.3348440901086311054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1331ac91be8c9945354f61052228d9b42da0336591c41728c1a4189bd2bf4e1
Date: Thu, 07 Nov 2024 23:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731020753
