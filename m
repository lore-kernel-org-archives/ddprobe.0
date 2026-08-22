Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65AE049363F
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787379634; cv=none; b=e7iWQSWW0qsXTbG7BclrVm4g+En5n/d7OrQgFQASZvL0K0A5LLop/H3TWa2vSAtbm1Iuiw3GmUDEBxcFAki+VSOomeXeJKa9WUy686maJ/2JaRrOGZFbCZJQaIk8k/RM4r/+Saesn1+/ksBGURn530C/X1SQ7sNUxJtxe1cRs5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787379634; c=relaxed/simple;
	bh=L887qiSeQUcqUC1KkySMy6UoP1LvNSKDWoBQZuhAr9U=;
	h=To:Subject:From:Message-Id:Date; b=jpPqj7oFPAMYGp77nNXI+yI/sSV6EDWJSpD9Vig0mhNAidRY7ecUiinB3NmRyHQ9NnASNRz+ORehl6Ao3Ouj11NjvtrpIj3m/9uQRZ3DK8JOXDyqpmeIbH2Xz0nltF1R7urjEImXVzwa5/GsmswXahJAL9f89T5Djj4ZsaF0nME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6uTTyer; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6uTTyer"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6ADC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787379633;
	bh=L887qiSeQUcqUC1KkySMy6UoP1LvNSKDWoBQZuhAr9U=;
	h=To:Subject:From:Date:From;
	b=t6uTTyerws7OK1xfgDcs++aWNdhUHjKptZa/Uv4IwPE/jZotRhefo67R7v1gx1qbW
	 RY95FYhysLWP8Ix5nK3hIlaEEaEEn4N9QMkiw9WtsOpKsqJsAbUS3sdpLh4uvXtrX7
	 ZvhJzdzXycDjx+CByKwLiLV/BwIo2a0GFwHwYXW/6Hy/oXZoeXiniNRsHE/SVN+hhj
	 BLfVa8f6ALFk/Zv97b86f5mw83ddvvLxZzKgmLeD1IFi4gfKArVK1BEfLmDTQ7H3Bc
	 kQdl0AVHUiXIT4hQ12MIQhuP9fAl1lOsgcUMLnFShy3FcVJrhm0I8tD9P40EhS7MSW
	 VJhCHbWh6CBaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B26D1C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178737963370.21007.7123751486410383217.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44ec22b29f9f8db109b9d036cb5543d884d03987d59ca987c3e8b663718a7bc0
Date: Sat, 22 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787379633
