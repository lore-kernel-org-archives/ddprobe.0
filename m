Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 582515328B0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788868834; cv=none; b=UTkFnk8ztDq/CFyQOdF0SjseEG1aUPQp9GExG5CYTw0TQPhtc2H/8MQGUrBrh1AgiHWT3V/bfEfgLcKG2FmEabSkLwpsg0Hvhl6TEZYseJ8Zy1PnNrtOdbKtp7qTsoHVEr6UOj+dmZ3m6xHLmyTksg2w7EoYiCIJTD4RfpAzvRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788868834; c=relaxed/simple;
	bh=IbVEqAAoKNR/7m3gHBnjmjdUC8k10OOaMykb489y3VM=;
	h=To:Subject:From:Message-Id:Date; b=eepFvGgm4x40eUCIqa7x4qpJKsyV8L7T9oyBJ/00RSCkQvKaBmVVjJlM8XxISyDcjib+Ro+9RHdZKhdXOusQvRMnvYvvCzyOJfsJXshePOReYxjQdZQgpgW/ZadRvslKZ1H/Rec7m2jIrtEWVMuSya5m++a1H2CsJ1z2nSAt39A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jmgfCWN2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jmgfCWN2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF4CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788868833;
	bh=IbVEqAAoKNR/7m3gHBnjmjdUC8k10OOaMykb489y3VM=;
	h=To:Subject:From:Date:From;
	b=jmgfCWN2VRIPVBFOI7fIZKmvGjECmbUzc0oslJJYk1/4R4Wcma/sMqAEPIP4zXrHK
	 JnY0IviaSYkVfzmTOc6+2z+INvIgNBdTP+TQz2G6E1HSDiEOxNiGma5yL4+qmpti2D
	 PcvIKSOaRdfmDMmozN8O1vgqz/H52xTPz5njjWVWKhOPBGpoP+/a9d13KEki1btogO
	 cO/FfdNzJ9Iqa/r2RWW7mkgWKLzlWc4xj6jx2f+NM7rXm/hTpmm5IqUhXaf0qTuAWn
	 gYubOcgIh3M+1ZruWzUA7qoEuTERTp1+1AqimbkuoqRcdFBIimHGJxto818jyhq8K4
	 CStDg39P+Chzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9240C79F82
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178886883374.991.8487671733124956990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57dcca8b182fd33fa94d58ac13fdb439b3004b8f5581ba5b93311832a35be465
Date: Tue, 08 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788868833
