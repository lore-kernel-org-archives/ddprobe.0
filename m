Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FB4C2BAF7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754457595; cv=none; b=YObQPJG0LQiqzWDceYwA82a6XDfzCA4AaYZzz0prz0Q4zLNMKWQAYhC1AhoCQIOs32PdQoGq4UGEljuTPbjO1gjC1mdozLn9ol0/H+OlSevRyJkkoVORkcFq8Tgbw5iENyr/gm+tNmk7ClJi/acQPFT8242R8+lKInh8++osNdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754457595; c=relaxed/simple;
	bh=XU6UCE6OxMoNGZUcjE0wAtV+3eGNSVLhS06qwVehwIk=;
	h=To:Subject:From:Message-Id:Date; b=AG5I1UDzHsu/AKigSwDSlIK2KdFtdH40bLXylYP/GJeV/uTxoXAjcruaS3f7uOZvPDFR340FaSfKyZrtt6Xw35Rv+nClH9a6XPZBqNqyLITGWlHJUUGUdGgtPS02G464yv8CcZ07bR4k3cRiXFJHwJVgQQkQYtsojF6RMMRN+1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtrMhyl4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtrMhyl4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5B7C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754457593;
	bh=XU6UCE6OxMoNGZUcjE0wAtV+3eGNSVLhS06qwVehwIk=;
	h=To:Subject:From:Date:From;
	b=MtrMhyl4jI7leqYJ4XGBfTI7cwz3+CcYA0JkbMH1nXd6pTkqSe70xMejqbzh2VNIZ
	 DTRaRZno/cLaxJmu4asoq3Kluvl4ZYDXuyS2Vaj2D8I06+dFkcTGveJzPryzwv3us/
	 MdLPUo6L8vtMq/B95VtkhtIBSSpVIMtf591kA9gIfN0N2gzrrWQoQmG3jJ78TdO3pW
	 sefS8b7Ho3RN6Pa/MhmEmTcvmXF+pZ59I08kFGRYuWBltVptL/vYMfC+F0uiqjPPUv
	 9xSRY4pSByOMzoOs43BViXxzc5zuUk/MsHc5G1GbyxOhfQTxb1dte5ppwsGCHJpHxw
	 cVmolWVVz7hdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9976EC87FD1
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175445759360.5853.14660934437989817495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f63331f4220f9d59f868d2148510675771f7f47f3a05e72f6884411730431c70
Date: Wed, 06 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754457593
