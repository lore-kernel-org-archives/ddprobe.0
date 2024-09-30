Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274C82746B
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727678754; cv=none; b=o0i5u039xfXSqYaUUP2IkKk21BU3pWO2nayCXaBwXGOZ9zh8hY/6ucvu8g4n3qGKHQAFwPeaomshZi1WOu/XLO9s0WdTxa0fWxEHVKEp00ahhLjP4whUSrKrl7Mb8C2B4kwMUw8TtNng3ff+0rmcPJanblRErIxjTVKzJ5v5XR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727678754; c=relaxed/simple;
	bh=uvs7q9FNyD6XTnpg8PIpCBGEkJVwxYi8APZHElLsORQ=;
	h=To:Subject:From:Message-Id:Date; b=KdtTKbyD8J0FfH6YuT3O6XC2U2CIvmrXUd/Wh+RjfG7K406HjbgRX6d1an8K1GV9ecUcCqYRjH+DZ1gbOBvBEJNBOBTCmS2SF7BpEgqGtpBdtx7KJh28N7KEVymbj0LeqrKb2zFDRMZLvPrJgcxWhwnPdmUF4JceZKdjiI37cPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMY8kM75; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMY8kM75"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6941C4CECE
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727678753;
	bh=uvs7q9FNyD6XTnpg8PIpCBGEkJVwxYi8APZHElLsORQ=;
	h=To:Subject:From:Date:From;
	b=MMY8kM75l0dRZTboo56MnF4PAZpu5nNePZJ9sps+zxXbPw5Sv+ei3zh9v++dMKIGm
	 PDqVWA1KWhnn1oRqkDvlok2z5PJry4/GnItPS56F2EYY1GsMv2rLHmQdjxTjdGrjv5
	 0Y/G87V+NfxNLTciNcROevw4NAZf7EDDrj5xbqvv8HFz/WQ1bkG7/86nB/oJaM/8kO
	 Z3wheg8tUPCMgGt0jiE14xiFerLCUho0NqaXaO4FESjd2fzG9Y5l0K1joORlst+eVi
	 lXNUgrCONUnP6KA47gA0r10m9tiW3rSxfV9cJwWcyvyMTELAENrC9s7pLIZ2mZlH8w
	 erPj3fJyNu/6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B0DCF6491
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172767875360.10785.14287923210140751334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56d94d92f4190f0e4216d8ccb576e774b815f4a6bc4d7907abc1737817aa7d81
Date: Mon, 30 Sep 2024 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727678753
