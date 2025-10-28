Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D44DF1758B
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761627593; cv=none; b=riQgrSwQIZ/2VsItDsQtqMesfRXkHKqmlbBQMMLQHy0OXQvcTecyeTIs6fbY8+B65cTPVw7qztIOg1Xki8rd9eYkCCIJVUXYcOyhhmpemu2F/FzqNNa082PZNttcWEBwe6Js/DJYbKjOtBwhaCpL1n8MPc+1F8oiPrN8bcuoK1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761627593; c=relaxed/simple;
	bh=Lr7SAo+DPL77HJ/YZ1m9qAdTl6mecXqFoh1mot6KJXg=;
	h=To:Subject:From:Message-Id:Date; b=ONsPsTtj+dXPvHFTuAHdqSw5rhDziVccuiR271cm0yX2RJP6ISDSaAk7lp050hf0Bmoogzt8XzqvZiEf/p1Z1N407U3GHZ+ImZUwOifO9hridtZ8OC8tYB76w4WDhgnXTIrovrjgXVCsiw2gRPC1gTvIxm9roQBEz89U+bi+YGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uk2YpKMe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uk2YpKMe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D28C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761627593;
	bh=Lr7SAo+DPL77HJ/YZ1m9qAdTl6mecXqFoh1mot6KJXg=;
	h=To:Subject:From:Date:From;
	b=Uk2YpKMe9SrN9+9WaJCT14OlwCHYgv4Wrzy7xnWgcucLF2CT/iBeHgQs7lfQo5BCl
	 6B0/t/C+4Pw8wZ0SYkVwbBQvbg6yFRQjFwWnsxljbBk9etoT4DXUvmrjmVGL4PweZK
	 5jRdtbgKNhX+7FxzPbIQUurbg8Kv34V7fsgnbnJX+FQ4BLVehBF8shRMiGlOwHR/7u
	 rZ1a9F6oT0cJLhdpZ8rZDthxvphyTUzkiMRdJhfy5mVFpkZEBU1+7oQiOjFrtFcUvN
	 Ifm7K2ekE0L66v2LeyNA5Axm6/ZSN3xqJATC8dLocPwWiSfBIaX64pd6THv+KeK+Ca
	 sv5f6+cpH/JWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90659CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176162759358.24274.17689298288739906052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1caefd1ebd10769ab62399a1bda215e3e8df17c74c9e11e241d41bff9f0674f1
Date: Tue, 28 Oct 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761627593
