Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D331252917
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790257834; cv=none; b=Aj4Xlh1QNB4kHrwPYUhQYwAt1qRM2Qo+FyAauas0GEZGJ6fJml4LDcReyQDAvbMs35FBcAGmOKNWLV7LI4T5TnXp0nzjAFBMue69Sshrz9ou0uHpAEoZ4qTVguo2llOhcBxFs9D2eT5PLYLw0BjcJAeAbs6kIMnkLwLMhvENZvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790257834; c=relaxed/simple;
	bh=ZVH/HM5wyaq6XjrBUL56JoHTN8gIw0fYk6A0DbibyW4=;
	h=To:Subject:From:Message-Id:Date; b=B+X4MkiByPaFqCVb3F9YIQhDhvevBbDY61d8Vftg2hkBmLQtJnJuAQna60Z8+Jkfk5yh6JQtaMasyl9ATp2pXxRU4RIHIInAfbkglMIYbsdrQkIWHU4PFPxrLcQwEGmEyXgvD34YXMBYdi7N36p3OHoidl++/Yq7kOZXjummc/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/92dAGp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/92dAGp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA984C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790257833;
	bh=ZVH/HM5wyaq6XjrBUL56JoHTN8gIw0fYk6A0DbibyW4=;
	h=To:Subject:From:Date:From;
	b=s/92dAGpfVmEkzmJgjITkYxkFgVYK+1M0f1kf/SGinVfNUYyo5thIXFF5iN66yFOM
	 BLAFJu6pDli3Sg1i7+ahp8HTLDUTjJkfZNE5QaaB2tQ+iguaB4c69lul9T0EKSFvQb
	 AG0WOkLuV8vtxB9FvtIRnCFbVLJVvkrsLZwQOk4lKj0I3U232w++WgkonofcJx4DVs
	 2mlc9pY/aA8mKgVYOYxL6uVAENWywcDuU59ahiQ0Vv01WJpwHhM1o5rUSAeHbMijvN
	 fOJiDycDBK/BEdI4+313pau7CKYPnJ4tYYAv0ZaOHi/zBkELd/pIB8mHeX7yNh6BTs
	 HTI14n9W3obqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FF2C9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179025783371.18309.6120990943038211432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15bda3ca9b27a4d8819834d0363a590d19caff2f48cb009e428b5a23daa1d58b
Date: Thu, 24 Sep 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790257833
