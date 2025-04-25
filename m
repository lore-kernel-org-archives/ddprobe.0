Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29A1B2222AC
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745564994; cv=none; b=eD8/571Xu8Gdya2bUK/lXfkFFDFxSHKp/6lasSxlFLnCvGHNOezIc3qBgRL7/9hZipgffyoy1gbF37VAmeicZUOCc2oidM7Xd2ZGXoiF8YnOjoAtR1HWZfLFnqFfo2nx2Glm0qNJWbrEqYcLfYNya32SFyX+Z6X0YYVuKe+xWwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745564994; c=relaxed/simple;
	bh=i/eRhVb6u6xwFx4+iooyTxYOxcAx/rbM/80KKuCSDks=;
	h=To:Subject:From:Message-Id:Date; b=i74kr/ch5MLpg0sb4DC4l+j3enfOtvoqEd6H5eGrFr4N8Uk59K/dXsl2HrzRW+yTeosgZU4cn7SmFEHtLyUSf3DhD2jsNzKlfgFJygAFMX9RUkLcvzmYzJIR85Ks2jUpkENX+x6Xv5PLZ+x43zJktRwaYRiwda0KD9OekkXeDdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KGT/Z9hV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KGT/Z9hV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7C5C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745564993;
	bh=i/eRhVb6u6xwFx4+iooyTxYOxcAx/rbM/80KKuCSDks=;
	h=To:Subject:From:Date:From;
	b=KGT/Z9hV30H69SgaRrQKHs4SCvCEx9/niI9K2LoBNoLq+edqIRE2upSm1pZg2ufM5
	 qPduZxq9otm72IL9O1O6RYCkQicgT03g8b/MeMgs0UdnWvZTht4bWwf/oyx4786BMf
	 KmrClrfnRJnfQkCWRQwnJ9F3mzX8LE1V13ZxvPrbQPftarzoiTe6HZtHlOwxKqzRbl
	 JN6iRxDSqCXcM0Gt4r63ZgcCK9I7Rz/SgSCmrs395+0l/NjXY/vVNJ9K5/iKJSRWAB
	 zzhe+0WQVPB6h7vr+mx06V1Gn3Nur81k2ldTaAKheg/SzBc4uf3acRJPP5U/gDxVCU
	 8ycX4VFfj0FcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF60C369D3
	for <ddprobe@lists.linux.dev>; Fri, 25 Apr 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174556499357.10435.1270890931657868088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df9746c694cd682ef4f84b0f966297a0495531896c0c253e7f402f040ba5ad9b
Date: Fri, 25 Apr 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745564993
