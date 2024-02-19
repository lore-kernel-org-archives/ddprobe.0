Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D4728DBF
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 11:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708343297; cv=none; b=g6hKj3WIgb9Tn369hrNQ8mQZr7BEvSsxW3RPAPzB354oXPDqNEs3XIGS8dTlVArkBh3k+KEOj8vJIxntkVCgqJNpWqha6D8SPD9AjWpd1tenHTGeOvKaAvzQ15PoNHMVP87As8z0OkreRPAKFAg+Cap59VM6LAc+vwcbYoIh0HQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708343297; c=relaxed/simple;
	bh=gEOVzDMyHOMvSx+7dX8SEijdBBfjouthRbQmK/LY9c4=;
	h=To:Subject:From:Message-Id:Date; b=QFwZbx3gOEshnEYu+V4BcLImM1yec/ea1qKS46VKJNJUxL2Uew1NbxvBH2Nl2i4ziHjukoNVTc8Sd6fTf3iLMqcqd+rcVKYPN7Yp/1vJ8XMQfdEFZuKeErCYZSIPl6uogeKLhx/FPw3Qx8M545sIEqP77BaXD91knPtXYhKaWdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FdN85i5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FdN85i5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81DE8C433C7
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 11:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708343296;
	bh=gEOVzDMyHOMvSx+7dX8SEijdBBfjouthRbQmK/LY9c4=;
	h=To:Subject:From:Date:From;
	b=FdN85i5AzoX56x4FYUL/+y7b+vAxzMyAtX7XeWagg0z7OzTnvEgrokNXC0JFhmp99
	 K06e8LZQFzgUSWveq+mOCuTegXehZ77S2sTBSFFr4DmEkvs5RItcV4DmeWFUXurgoH
	 teglejW4ZHEhdV27FfaV4+zDT8Sa+Pu5/OY5aynRNOwddAeJeJGPsYtvdTB6a7k1N4
	 WvFL1wDMF1aEiSMMt67uu+EcWbQMuYxu3/EQ8QdVvtnxsYrHXHYSa7IoM4y3VXzKiE
	 nAdVNBgF+5tmPkfPdwfI4rCI+g3EGtS3sRi7WB1GPxNKqRvlc7abzywjkmwjECat7+
	 SmRN3sLRH9RWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61511C48BF8
	for <ddprobe@lists.linux.dev>; Mon, 19 Feb 2024 11:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170834329637.17266.17158200149473678039.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3eeda9f67e15f25039394c3fc774aa2f3c134a4e620df1918a921083089f151b
Date: Mon, 19 Feb 2024 11:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708343296
