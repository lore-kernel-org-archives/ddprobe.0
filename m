Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6291E2BE63F
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782671914; cv=none; b=EYgs8GHf18ZYTqX4yLnBsOLVPJ4yxkMVlMZFVEfkxZm10Vd0U5P+fCe9zsHvC6caqKpAxPAMImwC2kRpp6nJUSidVBtMT1ewrz+r9rOCNf+CxuvMGMhirnuVEt8v+LrEdNGM1L/APxqVj+/jqK6oyjh2Lve+NpJO4ULXq79h34Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782671914; c=relaxed/simple;
	bh=Op0CVBK59jL7HwEzeCgHi6epmPJIKXBOYvma5roDpQk=;
	h=To:Subject:From:Message-Id:Date; b=ZUEIkYALturkjzKmovHfbC56IoeTNgHJINCQtMQ5agaC3eZUf7xAm4p/VULfbKdIxVC4iRGlvxJjjXzbUqieM7BC54xJQSKzsPAr22WJ1zIxpqEOPvwSvdbDWYYQOnYygoGexNgOI0vH6+df+lN4QEPcYSApZ3rsevDlWMp7ooQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KRBPrn+H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KRBPrn+H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5964C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782671913;
	bh=Op0CVBK59jL7HwEzeCgHi6epmPJIKXBOYvma5roDpQk=;
	h=To:Subject:From:Date:From;
	b=KRBPrn+HX5s99+PayeYB/iwi/GxoEvdKyG8598Vfj4sr/sBpSoRkzENNWFfAWCdWw
	 Yw++mIIRx5QNsPXZ2pAMeXhQWXX14YJ40oAqATqT6uL3KGF/cN47S7hOmKRed5Amb4
	 YfjIBdxmwUwn9ZVGzCWnSSqIOTfOlapUxX/feP87qa7U+Rn3ADrMxnJ3FJwwULQYGk
	 /hUafokT6nj5l6x+TRKKf9rRviAk7dAVB7s798n2992Ik79FY9SLtBqaYDoXObmvTE
	 dALREWQi2iviSWuPYMAMVco/37X0CQ+ZZjfvsgor9HJY41kR3Zos8WxsBnkh+fb2Zy
	 BokhGpyA+tW/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10BDC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 18:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178267191370.5178.12793893163336825357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29d3a4a3e4e36acead8a4172229c6f4553fc3d08902029a60d392824932f1b69
Date: Sun, 28 Jun 2026 18:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782671913
