Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B56282EB
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709921297; cv=none; b=D5F/5DjbjQF3/GGT1I7LPdBVXEnXOdsnGEyQgYZM2ACfjvTsDgak0gEWev8J4kmtdVeouHwaL/f/5VEjInMQ9/L3XKdfx/WpiRBL3GuVEF9DqSDqEzTX98/Bp3PSgB/lJJOoLnPTRekF/cf9BnI91zgxSiaWYqM9Sm7qiZhmiik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709921297; c=relaxed/simple;
	bh=mQDXbKDccA2SuXXpYIfdV7wDlZPaoYdyH8/ReTZwO9g=;
	h=To:Subject:From:Message-Id:Date; b=h3JbsidrJNudoRzffKbgKsZ37Bo7rcgAfBbZKVNHdkWJJ7MPyFGaIrxzqs/EN5TExuAR1Kos58fWQ16zzVSpKeSEBj9IrtNEQIUi+2Gs3Uipw7/zhFa2qfEa7mQzkA3h77u0WfX98mGSvYEFREue4uyNs2CBAJlFEX3Z1GcFlpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K95kkmdS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K95kkmdS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77A8CC433F1
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709921296;
	bh=mQDXbKDccA2SuXXpYIfdV7wDlZPaoYdyH8/ReTZwO9g=;
	h=To:Subject:From:Date:From;
	b=K95kkmdSxvBt6M5eii21UUBY91QW7O6HS3R9yKrX0FZhIlcWIEkX8A4W3a1HvGwLL
	 MY3m2kdG09QHzor5VDzGpTg2XOCz+0zM/zCWhVzXetDMy5HBJVMMDyCYeyYbF48A0o
	 nzU84V4c5wzxvAFi3dQ8rRv/IxqIHgE5oN8eK9uOAFYCKpmXE4AaffF2Kxs1s4N1Pl
	 ikjOnLNlFVLMNTu2tVMhyj//Jhq0PgconS+TuAg8RqiP1sR6mMFqa2HTDco4X5JxDh
	 +1AtlwdHTgKn1kp1AAerjd7Rs7w2RobPncjCq90B6/9d5n+OR2/0dLOKHxpgCeuH0d
	 J0Zjg6WmRA/ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E170C5475B
	for <ddprobe@lists.linux.dev>; Fri,  8 Mar 2024 18:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170992129637.4825.892931875948055711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6f812ea31372e0127ae2af45d08c8ad3c7de1da5b4b4dbc541df5da34eda698
Date: Fri, 08 Mar 2024 18:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709921296
