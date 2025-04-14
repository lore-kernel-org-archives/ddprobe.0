Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C223E25D550
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744628393; cv=none; b=Hy62GZmU6xUJgrzKmRsihM2qtFcdrt4ZQXEGflTF8ZNGnbEUbnGHJLlgV8ZFubt7qh96StqfCbqJV1rZR31KE89WQ1rY4SJf0u3LcjudHRbh48OKzKyghaIg/7pbUpQNgkCb+bKVIEV0s0Plhr9KiyTgIab3CBXAdMurkVDc9Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744628393; c=relaxed/simple;
	bh=1UhdgJ9BatclpbatN8g52maFPBgbgnlsCp+ZzFcyB+s=;
	h=To:Subject:From:Message-Id:Date; b=sIyz8f+Nt3r63RfCnUJiw6hxe4yAx5i2XEz7NEHKdXQJkUnjBg/zXXXblsupcS3tWyzGH3+NljqCMdfaPjg0pmMppeNIxoCBctEz7B7ZbIbeGLmynuyTZzRHa3PVwWFV2pOWq2ejelMd7kJuoAKoCDT9N6WURGT9l4Z/MWTi8ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ece+P7R9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ece+P7R9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48A1C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744628393;
	bh=1UhdgJ9BatclpbatN8g52maFPBgbgnlsCp+ZzFcyB+s=;
	h=To:Subject:From:Date:From;
	b=ece+P7R9jhALtyeYy/tK0cH6IV8SKg/G/R5TYSBrlMpnTJSfIhMYW4SVP8u37+hz8
	 LUPQklqxOcS+qKaytrqF7DIpSUppVC9COKuAonwkznaYYLG5DQLaJULUEMaY4rL/e1
	 xlEB0htFh3QSem4ea/Kup/jfR758Kse9e+tvtVk/YnnXeUbvkIVc6uk08axLQ1EQav
	 BMaWQflHE1Qyh9/LsxURmVk2i2trAkAJhJ7OHMgNAKmNZE48E04QqwFmkxLjgPy4Mk
	 sNk/wTELfXqEfttKSR8lWY3sFD/DYk8talmUutlLU64BBhVjhkV6hehhpkRHCzWtCD
	 7IfpZD1PaOkJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95604C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174462839360.11776.11295899801372988424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa18c18bcc89ba015ac5d36dc221286949ba9c3fafb3c79b93c50a15aa089269
Date: Mon, 14 Apr 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744628393
