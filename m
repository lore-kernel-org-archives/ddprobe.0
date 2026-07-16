Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70A3F1DED42
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784242114; cv=none; b=Cf0Aju1LETuMOZVjMnFpqe+SNI2HheSTboQmIe8MjLoyiCWvOyCfaNBWPTsTAQ4xNNnHpt+RNV9BsSMzK6SzsmwIZdqVnKEEvMI5lzyV0rUbHKqLaPG15ciqlmHmpiXIYI0eXUk77P7zZ5L97JTNQM8tgBHh6Y4g32G3S0b69to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784242114; c=relaxed/simple;
	bh=s11FmaYS+Qxfs1DPASse95dsNYWnnhcTbQQtfLqebtY=;
	h=To:Subject:From:Message-Id:Date; b=tYAj5mmTKqUiT3NZQNshP246zljXJnA8ozM1+7X0IdLosFO1wB/S5+KO3TpyAfa7XPeBwuWAjDrc9LdSogTSu7y4msh32w0APdcUweaeWAuS4Lja3ExkxbknNjprsgZIBCp/nDDlogtDRUnyx9zx2+qpXHL/yr0/uDNrb+xlvtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lkXm0usu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lkXm0usu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF837C19425
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784242113;
	bh=s11FmaYS+Qxfs1DPASse95dsNYWnnhcTbQQtfLqebtY=;
	h=To:Subject:From:Date:From;
	b=lkXm0usuF0aqxZhACNQhwWrHOgjHxVvRBHonrRkT9lWDYNBjvkAx+BAmF+y08+7Df
	 h+joXdA0AlD3cKvp1L/K4GjIJdadLE/hqJXN8DR1CurX6AVS0nqrRcVe4YqLPLepnY
	 /83Dcll0U1esdDB1IBpGjbXg5Ng86eVCK2eixySrU30jM+XhJK4VEtROjQW1dgF7oM
	 DW5zB4G4l7h7z9ERlqqdyvbE3LHPuK46mOBeypj6NPuf9w/7GeRIxbT8VEat/n8BVL
	 HP7RZJ5uyi4qzqyIJ04rThVUcjghkZkw9vgt2iLrrD2fzoSlwsjDbsSBpuW8hjr2My
	 Vfqbt9V6Vym2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6EE4C44512
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 22:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178424211371.6989.4557992014570461120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51319e5b3bf5afdad8f34f0e8b41b5d470eebfe20ee29a4dace4c8af8ded6a76
Date: Thu, 16 Jul 2026 22:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784242113
