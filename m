Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425E112CDA5
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782439654; cv=none; b=Oar5zZ0gj3bCU+k3qDZBk57W2BoKsDEppTaoR53VwzYBFVQfo0bFCQrZpoF8dNzQSeCEiD8pNu4KQvsILza1kNY8Z6yf9kjupCBjZssn5quBEDI9Bj8qgvEZ+7SJkT0/i7DfNuRbcRs3Lj3J69Tl4U5ak1N6mQoSZOPrX7l9ahk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782439654; c=relaxed/simple;
	bh=CnD14H/OwvV8F/6xdXaCrd9M9PxhieVfMBFWxSjqAVs=;
	h=To:Subject:From:Message-Id:Date; b=OHEhqU94EgnQ6/j/Mr38sH7RbdgnxoW5u93ZA1UsIXtwf0rNx1snwp+mJqOiWZ7kap87bmgBWPt1orYaeZanz9qIqmMusJ/NJ+RqXSsQvaCXRBRUwRQD+WwJSPeNfL0hixTOeypr7TXX1rpUvNys4YikbxRQ2EIR9dm9B1APOUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MSmdtIx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MSmdtIx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4965C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782439653;
	bh=CnD14H/OwvV8F/6xdXaCrd9M9PxhieVfMBFWxSjqAVs=;
	h=To:Subject:From:Date:From;
	b=MSmdtIx4a1pLYOqh/TlFJbw1Dkm2z8KTd671xT8Edhq2wY59bPTUQVHxNdz2fOjhS
	 zgFCyZhqEBLIRaijLxq7UGqrBfI5HqQrLT3CE/1Fc/EaVdBVawMoF77fex0W6d7855
	 rDMP4bSHnJCUV65jRCF8HW26AdfWYmfBTwyzayvGT8TqjCqkqd1GaM+yuAsJ9KASC1
	 vpjLvHOyEl9PfSqLe/qmrNaNqg1Qk3Bt2AIcQc8x7d7tOshHc0B35Tdacx2umfUPPb
	 m/+HUfk/jlqBSLCFmxL7EM3Z1SbQ7BYwryeu52oGObna04L36I4hBkhvu1i6IQMdEo
	 jHjKIqcDVogVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C9ACDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178243965368.22175.450352630603869446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108ca4e668a3a090fb010cc71ef2847a2cf43e1fbd90f9694fd2ac90ed7dd9c8
Date: Fri, 26 Jun 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782439653
