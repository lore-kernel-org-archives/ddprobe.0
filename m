Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED581C7008
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744481394; cv=none; b=m2GsoH0zG0SRm+pivx+0AMrPsQt0Adt6W+fhxaRY/n9gYUw4oFUszQOJP8Xgv2T8ehMNsHU6kBaX9hBXtEcF18EZKv2GYE5vY2IufQTnCrmr8T+z2Xy7hXaHdc1qxBsN0aq8tHVHSu/xwx4Q0+UmJeImt2lrf6PzeKZSgCRzWFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744481394; c=relaxed/simple;
	bh=j88WObL9a3LW4wyQufdB70gk8iynZqhLgFPhSTHf4Uo=;
	h=To:Subject:From:Message-Id:Date; b=LIurXVBwSKDlSUch5AXihdNKWTf36duX2EXfTdWhucoWL6xfBj43l8vZGBmG78Jq9mRfhUxYSLqRlIlHLL0kcZaphXFPDhuiciGf/mqUhoZ2bI2mcEmuZ5Q04OxqxTJjO9H45mQEU9k9eyQbihyXwoP+nOWvu0E1xbap41Q6zek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RnrK4764; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RnrK4764"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC86C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744481393;
	bh=j88WObL9a3LW4wyQufdB70gk8iynZqhLgFPhSTHf4Uo=;
	h=To:Subject:From:Date:From;
	b=RnrK4764l/aKGcXASRXHjmE7tmaYWeCBliPoc0/NJL1g72dKRVkVnjqckWPRsquyP
	 5HFFybroqWC1N0IbrfnjjAUM1r2PL6Rh3dz8ADtxyis8H2Eb7B36fFSboNzQCNiH1Q
	 vnxbJYAqK84WkIrZw6S4NeVWTzu82BkKZwodoIITbvnQs7eS3FtzXcjkjz8+x48uvt
	 8mOV+8Mm7smVsjIUSp0XRJXQx+dCVm+3R0ROYqUm47+4P0iF748CKwaNiCgGfi4Ur+
	 HB16WeHix9Rx4ECwsEgr9WmlUl1JUw2NsrLeiS/u6CK1+H/zKbOt783C7Mh/qix0kR
	 7Mp+rLhLpi7TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98881C369AB
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174448139361.13207.991979632404762460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da631a6f1e6396cb636910ee17c29083572794de21c34c5c0f0ac44b87e38e6e
Date: Sat, 12 Apr 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744481393
