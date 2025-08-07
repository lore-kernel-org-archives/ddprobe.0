Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0BD3208
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754535594; cv=none; b=fnWkw8mg+xLqBHj8fI4Ah9FddmB/HOUVwAMlBSqD+1+h40yuMAf2nESPtos2m15Q0E6jERBMJHvihqi7fzP91d7ScbTzkzEqIoKSp1XweTe+MtX4HxvHX/d+tV2dLWwzjN5EVtW7eUTGIywKCVsCyVjNQDelOqroBGrc7MxAWV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754535594; c=relaxed/simple;
	bh=xEJrb5kq7ghERQrlmYM6wyprcM5/CzLWbg5RDcSDAb8=;
	h=To:Subject:From:Message-Id:Date; b=H8w/38Y33uDtUxad5SdEBFf1Lp9lL/Yhhlprx3xu/PEh52fjsOH3BkXAdTDUHi8qocGj3adWzdl7mNhJ2co2hSPqyEMUGIKEvgnk5xHoVeIi9d9LdFlfxkk0N2Eu1INkOTtWmNd9FOS28ncN4NmHCmwFEH5f9kZNm1c0G5iC++M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jDNMRR1N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jDNMRR1N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73C1C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754535593;
	bh=xEJrb5kq7ghERQrlmYM6wyprcM5/CzLWbg5RDcSDAb8=;
	h=To:Subject:From:Date:From;
	b=jDNMRR1NrYTCNJkrijTu42bTJOz0D7YMmpSHgorOes6Fr/SHpO3kX4Xbn7MeCWOkq
	 1g1ASAs+aghsBN/qM7nvEfvXZBHFcIqti28AiJoVJagPGnn0cVd+C/LdvhBfq3nLVa
	 hemMaX+b9u8AQXI03iQsgSC2o6c5PZsG/bJq/FRjIXcpFgZFpGAwqhxxf+S8ASFSZM
	 qEtDi3zzK0KooiJv3zRa1plxUWS8yF+10zoPPyybkmSX5wkANljB/QAFVwGxH7gxny
	 AIoB343y0KLOLhipPxygO+Xpm9OQB90xZo+3iLBNQvzuP5YONnm0jexE4v2vKRSReU
	 FMiQ80rzlHdfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919BDC87FCB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175453559357.19139.13519070986135227064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 712f78b14b739f5f0365f925f76860a5fe5ff7e1648d728e494e798d0aa12a95
Date: Thu, 07 Aug 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754535593
