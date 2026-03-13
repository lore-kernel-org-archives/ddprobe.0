Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F248138CFEA
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773415494; cv=none; b=VOMhigWJMM7RmQU29bfv9uzujSoCjPm3ni6DWZDipSTAQXgQZ4OP5BWxqBxV7uLbrcWKkbkzvQGdrjXO8xnVpDghmwa+7u3DfIRfV2n4Cj6C+tuUZ4m2czgFjCRPfcq+N8RYH/+xmikhQk3CssSE/L8a6G79Y4xN61tJMIG5lrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773415494; c=relaxed/simple;
	bh=oYTNt6VwHhkB3/w7Im0DFCbI93fL8aIEglgKtvkWFzk=;
	h=To:Subject:From:Message-Id:Date; b=S9vWApR2IFYirSV0QiHFojC9Xa7XKJ6ps8MNN2y144Jfe4qTqT+tCp06cQ+OBp1dWpEo/4RnONsyHZKNOcFJ3bjDuy8bSTuwBDGKzaKL+2xbhakU/LrZdHj9K/DSXWPJGvMRrzb6zOJ+cFjvn0Fsl+S/JegBMDk22N5x14wRnek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UkrD4UXg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UkrD4UXg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1D6C19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773415493;
	bh=oYTNt6VwHhkB3/w7Im0DFCbI93fL8aIEglgKtvkWFzk=;
	h=To:Subject:From:Date:From;
	b=UkrD4UXgiCMUhsE1RmBHgVj01Vd0k6jH1DknCMGYKF6I4PHqGoTQYAB3F6sTdrmDu
	 6Su/qQnfAgD0asZOrVm+e4mXIbMdrdc2rainlfisuKnSyFuSmZtvCxB05pUe5EbB8C
	 u6oKzDs8eZ5dSBSPH5CMukXJjBz4eQLBXn5rTdq+GbLGak5CeyZaDcvtMEeiW8hsOU
	 32xvnmjiyu3CtaMn3j0xtC/jsETKktpaXHQj3Hvdk9WESwigLHjbFTtNMNWJn49soW
	 f12AVlv/c8z9/bIqy4hQzdvY7OtvIVd77R3JXbE1tZX2BY1bHLoiGk7PWoju7Na/zD
	 Wi1VUW+YtypUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB27105F7BC
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177341549358.7782.13048752175920033174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d32b60b3b301c86b34129835784f2ec1a08bdde7d1a7ae78cd9a4fba795ddd
Date: Fri, 13 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773415493
