Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D952248F6A
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759309194; cv=none; b=ejrYFcM/AD/ErjaBd8VbcOzfcP9F7oYqt6dR7j81XXH31p2dXeyYz1sAr0A+irMEp5L4J1DbCYrPNAxk1gBqdNC+6ltwQILIYcCf6T8DwKvcTfvOlXUVyvpwAs1OS0uJX0Flynck1IbXCbPkSK3IC/onh/XepRG2OLtTS+WsSPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759309194; c=relaxed/simple;
	bh=/OfDyfg7RudZSIUDGVUDTnvh599VHWEWhzLl/bgGbI8=;
	h=To:Subject:From:Message-Id:Date; b=NAXvpUPy+Sce/VotZ68vmCqK8KkczBWE7StMYmt5jdv1iUyBnWAvKWGdho+cWpbcOG4JXadVZGXuKdWUjztQedECIlPvZElwfU4IXI6o9+DxjMLvn35zvqMt2B5lbMhVSExZZ/Z9n/nCnWycw5l694b+RGKefaRIVv1LUT/eoSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UVEldex9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UVEldex9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B20D7C4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759309193;
	bh=/OfDyfg7RudZSIUDGVUDTnvh599VHWEWhzLl/bgGbI8=;
	h=To:Subject:From:Date:From;
	b=UVEldex903KKPSxe8TOinyfyQ0BCXKGKnjThUwGp4UGxFlzo+Mte51LBwsrj/VIRx
	 KBxo/iujMZrOmyAvYt3o3HjgUUh31S1dbjAR2FIcx2wNeV/tq83L1eWUkNMG5qExMj
	 YTeNixvuvTq2xlBgTFtACh4fn3gm02VZpxr2oKwjAM0j9L5OC1n9BQe0grOnpP13z4
	 3+ciDq8N4xlWxMtPgucCBH/icjc9/JXoKi/DlYKe0PZPWa1xhOytaDawtYhPaLEpM+
	 CNTmBpytpZQGT15ni92qV792hl5JMwcjqXUS1wO4jYo8nA4j6wYMOhwyf2NCkrcjng
	 fUz6S84HlK5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A02ACAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175930919362.17443.11165605961421651192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8ab37db0f11b77dc35c43475bd809a4b8ff613df8ba47f7f4fd4629b05e0fb1
Date: Wed, 01 Oct 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759309193
