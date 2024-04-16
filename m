Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 464262943C
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713296363; cv=none; b=FPNPpJ0EMmEf4QfhHODkY0iLRf9wXk/tvIEJOPVrRdmVucgSBguKZWZDcovtGLKkuSt2MUKG57y1HdM2osHRKjVH9UlDBuO6ohIV7fEjGzvl/MlkC7WQ+vyQq8rFWVb4qXx3OYvxovrUaJpDc2/2u9oFaB3d0QRXM/CwaSk3HUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713296363; c=relaxed/simple;
	bh=d48Ftq5UoY7DBBGugy4fYPOfJOybTy3gw1Dd8NGrcQ0=;
	h=To:Subject:From:Message-Id:Date; b=cgV/9ieL09dG/DhnegT6RdE61ApJWg1KS/g90AaI50ftbMFeUGkltjeTFnWOTvgkNSy7Hv8cWGSOUht7X4mWD+Q0DKofbUzAml/lnTIZO2LIod4eFHQcdmBPKqIII8UBlQ2yVuyqD6fyacBE1LBz8+4nPYT+urX8jZLmjbfTmrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV4knClY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV4knClY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEC23C113CE
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713296362;
	bh=d48Ftq5UoY7DBBGugy4fYPOfJOybTy3gw1Dd8NGrcQ0=;
	h=To:Subject:From:Date:From;
	b=QV4knClY2WGGY5Zu/Kip+jj6H5UYqSVxkcw9I4/pJh0pUzavue5TPtetxOuT2PTIq
	 qudzF3+dScj+RMpSmarm6HJdSGSOCgWjpRMzT135SyKhmUiYZr1CqKgEyCnyxR2Kkp
	 6b94Gmwq0zugf2IH9unf7ZjhkaohPDpSW1xTle/1oqamZqn7w9VFjKBhhEfjn93Y0K
	 llzh+kS2fMAUyUlLHVa54fgHnv8qPUwzmWHE/P5rTQdYjcud17fXwa51YJ6e3iwlI/
	 TISraGJa2TJCyaDQNG0reDuTnV7S6FhKAV93LyyWefxQnOFlu9twVYKLUNQ1RnqL2W
	 6m0OyzQVZaqrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C399CC4345F
	for <ddprobe@lists.linux.dev>; Tue, 16 Apr 2024 19:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171329636277.440.10686364159536446587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82143f4d79dcfff3baf77a15c8428f93b21aa6a927050124a815d4e4d32381de
Date: Tue, 16 Apr 2024 19:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713296362
