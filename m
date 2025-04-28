Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BA81BD01D
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745829594; cv=none; b=hEct8CKWZCEelr1hSQuxPZsRly+msryXe8NiBOdqrvDcER38v7EIBYF4T9eSd+/sRHXBlgHB5sdEhSyg3g29QnW3SsL+P9SkVvOwuBL40b+BdY1KjIDLC0SUQPD5+u//GQw9rJjSPm9HC2ec/z03iHCouHE3Q61tdwgXvL2HHUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745829594; c=relaxed/simple;
	bh=fzOoer1ldDl9/oMoP6NoS3TG/dOzVMV63R9DnOXF6cI=;
	h=To:Subject:From:Message-Id:Date; b=L5rc3M14k2FT11E1JGGmGv5YuNN4GC4VuYXeTcRXCdt9NH7HIdQx7D310LIkCPqoSl8NlihUZpoxaEDe/Bhj6zcgfyi0WokVn66O62jz8VPjhvxoC8W/mNcUAbNXnnMNxKKhhgPE8VfvxOxBoycvO9dk/Y/4smCfaOHXbqSh71s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j/xgBeSh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j/xgBeSh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB8CC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745829593;
	bh=fzOoer1ldDl9/oMoP6NoS3TG/dOzVMV63R9DnOXF6cI=;
	h=To:Subject:From:Date:From;
	b=j/xgBeShJxumOfi3ijzQ/gHaZBPWr412iy5/anAXWRWXDAhXB5phJ6nqATkwNFpF+
	 ZO5Bw/YHKh6IYelDc05H9XQSh4EZejDZXrhwwc7s5b1VvEV62iVOnj8YkofVSzZv0l
	 hSnrxB6gz0ePAnwGSgbC0VzSVAKAx8Qovht0aVb3UKb4+6FP7/3t0qP6ydqsqL06G7
	 eHK50QFLGeUVNAccP3ljSV9hJlAZLMyE4XxR1fZ8uUfH32T7VzQaXMNyiLVqs3aF/i
	 0RXaFPansoSuGE0bAZniSQIfJP+FaSf1Bl1Niv4IgcNJr9MCtTnWJivr3DGP34qnXp
	 T/w0PcUKXtYoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F8C36005
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174582959358.334.13822588448352380594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e469c7a08ced457e12eee6237e7ad810a6b71c57c637eb578c77e9fd60934dbe
Date: Mon, 28 Apr 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745829593
