Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1121C5496
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760501394; cv=none; b=nFa35AtdHlj3740MA44jxHmKqbl5973oofT5t1wMxN15kWuIeoH1nqmY15sBWUm9U2ACx6YKAg5V2HVrdrhNEwci33XL163iTkZYWRFQkgmU8q7rhETlEWWuC+CkVjBqhfE9gFajtIZJWHHUb+pdT+adaXHRMPK8h27NWZx1Huo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760501394; c=relaxed/simple;
	bh=PJomECIMOgkfGsd5qmjYNppjFNGY7sqzkQCauQitdGY=;
	h=To:Subject:From:Message-Id:Date; b=J0VrV+MB5R3ptTQz3Vj5j2VL1TxUcGnsMiFtdEavXvtdz2x4BPkx/Zc9cLH01KtwJaGw0LtPxmOHYqyEeE/P6bToyNF/g4HM5JFIhwdaW2abON9dXHm5ZK5gi4M9sP/Q2Bx2VNaFy09OlQ8aOwD/Z2q9T565xBhLl1d7rEHhUqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TGJCv/gB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TGJCv/gB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37F0C4CEFE
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760501393;
	bh=PJomECIMOgkfGsd5qmjYNppjFNGY7sqzkQCauQitdGY=;
	h=To:Subject:From:Date:From;
	b=TGJCv/gBnKO/F16DwWyb9nZOv8F6ZfcSxkKmH0gaH93JyQmEjr9YdAwr4LOP/lTwh
	 OfWrP5h2sFcYgjsxSFEkkHaTr/0Th1eD/P7P32EQhXgCXesD+KHu2ugjWmireahny2
	 nSgY9MpfmzuTRn1KT61mfLfYsBuIODZlj1fsWvenY/jWxR488PxFv+xxrArP7gWR8j
	 cyRFsInbv/bi/Z+6GBL9q8bvQHKhLZVXcATD1i7dbuXOlGYmNTxfwc1+u/aujXzWH/
	 fpZIWTGrgTrOwOqygyaAA8RBqvd8pQUe8aiwhhbJkjSVyS5Rp4srdnDY/ogtG3xDcX
	 TfpugdhHYlcJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F182CCD18E
	for <ddprobe@lists.linux.dev>; Wed, 15 Oct 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176050139357.12389.6636919685175995461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69764e37add9ad6286b7e039137e97bf7d11ce8de45b06a2fbc6438c883efa1
Date: Wed, 15 Oct 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760501393
