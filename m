Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1683E1DED63
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759315196; cv=none; b=l93SUMovhSCqhwaiUCqrKLSpkKlx9dRzlEjNdsqZR+zccBnwSNmUFlkukLq5SKjKBA4MerxoArabEb/v10rC6ucJCFqj2iIHjbULyqWJVBtDb3mfKnfo1Z1rFHYMrmrG5YRar14KL/AXiL+TFKBQLnkr3GqgCQ7jY9xNHu9ttN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759315196; c=relaxed/simple;
	bh=pQ6MQ7IyX7rEN/m7VrZr2EBqEg2c4VoCblriZs75cvg=;
	h=To:Subject:From:Message-Id:Date; b=cUtiSd30jaAmLYzaBGjBZVQhOLh/UDPMN/5Bf+31DIa1nmpzL9a0jmrBXIeVXFkMKpKoPRM+zy2M+UMkthdcLmvHjjuAxaBHYuXLeCTVR/3OJFm/fPYjnbGPiDGtWna13d1PzhbKYtRl+b0Fi6B/tVCQ8vOZ1luTpUwP9Hne3BY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMxJMLzT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMxJMLzT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A93C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759315193;
	bh=pQ6MQ7IyX7rEN/m7VrZr2EBqEg2c4VoCblriZs75cvg=;
	h=To:Subject:From:Date:From;
	b=ZMxJMLzTOmMMR5y1HDmP7aRzdmvCXVpVxIG22Rpm9s4q90HW2T6SNGghu3jnLvwxb
	 6gl9IPkL24HTKirlUBbeS9CGUIC0IHWciHmoR1bf8T/wHKlYxbJmKGD/gH+KpkRuUe
	 nl02mvswtLUkdVhL/W14RfPetjU+j+uI30zV0/WyjU0lZbCnb9h2/PR37RWJRCvmnW
	 jekqAU9ZdpjHchAt9ye5yFtJgwECKelo+q7Gyl1pHwxMNHiIGVLv0OTJxlfJAcKCLC
	 d2RXyvOhPDKmQmtyO3QyMD8CnXTJnzjI5GqKmHtqtCGEWHdsE/d83gu0X4HjkEModq
	 NDXlkY+kI6uTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F95ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175931519358.28387.12714991726169047512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 325845f6cb9282c30dd36a3cc22a1057e488caba80877bda8699007ed800a569
Date: Wed, 01 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759315193
