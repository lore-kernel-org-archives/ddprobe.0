Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5579A63CF
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715477543; cv=none; b=Gxa/o+ODdOqkPozdjcJywQpRvVCs6yDmZohYQlh+CossyDj8J+DxJHR89kZN8RzUq6p7KXlGeXu/VW1S4rVREjgyfdwoMNTyeWi4cqCO6zzuleR9KnFai+rFANbgP1Yq7PnHiv+dmkS9lWdjfOVzKxQd0+PAgSLG6FPvJdnjjMk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715477543; c=relaxed/simple;
	bh=ZM4kVRwIr89o8qkX99WPxDhLYcCMzT/nSIRBGudBW/8=;
	h=To:Subject:From:Message-Id:Date; b=BzTw3txs0dxkjS8+PUZ4PtlnOpfUeQtVig5rB59/pfJyXISDoUW4vCFz5xhOPxpj7lly8lgl5ogQ4A1rfo7pIogAvxttUtG7Bq48yZAN0jUVjaw65JataBINu46zbOe7ToCs1GXS0CjPGIw/oxcy71INCS1T/mL6+1spAyASl3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IrUAjP0/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IrUAjP0/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92C8C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715477542;
	bh=ZM4kVRwIr89o8qkX99WPxDhLYcCMzT/nSIRBGudBW/8=;
	h=To:Subject:From:Date:From;
	b=IrUAjP0/97etNjASltCb+ajlgxaYYEkvNrOF7A0Tu8laQKXTn/IBe+HweeXCbujhr
	 HHWuN++JYf+j5G6iJgcqMyAZd7uulvzbat5KLROOrLPmFgC4IOlEdCDBkIB7PMZgNm
	 0UMG/ZXqBdLDKm2hOabdxSEdJSjGPpRXIsqr7+0S5Jyjn0BieNHAljztJoUSfL0I4l
	 rzc5vqb2bR1bS6Z8hRf6CRLHSc+ssiaq9uKksN0iopirhWEfk8JDKV07bcaV2FQQQ4
	 7zEGAUxn5p6c67sdLBhFgMfNB7/B83f3SXRikM9S+dkmYGOZIbTIi9zInvHVQ8eYan
	 CRWq/q/ki1qtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14AAC04FFE
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 01:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171547754277.18033.9049878694980537969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0ceed7711ff047aa28c13116f274541e902b322164b3fb7b40c2e5eccd097d
Date: Sun, 12 May 2024 01:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715477542
