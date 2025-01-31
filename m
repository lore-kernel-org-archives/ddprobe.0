Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3831C25760
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738350354; cv=none; b=BH7jwKvWeQjK2P4GwipbkBQmy7bN3Bo/Nb/aRxxUBsO8OmXtPgrMIfyNS3ZZfli84/WQFugw0J9JE085VVxsgtrAYMJ1EUEqt2rUWCLxTKJwqFpZPMC63SG07wCMViXurmWfy5DVnzkO9yZa6MSiOt/fMsHYrdvb9KLClxaSbeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738350354; c=relaxed/simple;
	bh=l8WI+XlLH5n3Ww8hMKcLobcu8L9NauHLXA9Lkw1IDTg=;
	h=To:Subject:From:Message-Id:Date; b=CvkN0A128WUBY9raJq4hmIjeJcAdUN50FBmmJQAST3C3UtsP5lpUfYBnw1TFRZcorwm+sanQ/P4fIuo1drvw434Fb4uDraWrFIg3Aj71CayTCMG9ByV4BbdimwJAFnycLYG50Xl9GTXvo/rPhz/qaJk109GPVThjyAPnP6U7w4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjqcmiUs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjqcmiUs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B51E7C4CED1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738350353;
	bh=l8WI+XlLH5n3Ww8hMKcLobcu8L9NauHLXA9Lkw1IDTg=;
	h=To:Subject:From:Date:From;
	b=IjqcmiUsJndyxSyCOLx+M6i6tTkfMhR97hu1XTGfBUJWeYRgDS7BBOVdZKHC3S8sg
	 pDRaMmw7Rhfg9yuW9+BCFSaVuhPy3iFJ/OAQLqWp+qGdIfolBa20SV0EDdt6KdPU6D
	 NbmVUH7fGjeF76gu2M/P/DjVQHSl0s9nlfhPHZgVxnXvWwKrmxEYc1yUKs61dOfYlZ
	 VLJgeyn5oIoLPu+PYwcDQcmCJfc3PAsAkTvNEbgUPrigZYyFarZEBghdM8Qfjrz+S4
	 ib5kTOABCfdq+R9iOSeLRhY9vaqkGzpGMYtfAzngjX0Q/Zm9t6qtNAC2Ory+pPKeCq
	 w+ULnkYI4D06A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B1AC0218F
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 19:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173835035360.2747.11997911450303540439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d3bd68670187be377a239626badac72bbc91f66f5da54e9cc10949611879350
Date: Fri, 31 Jan 2025 19:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738350353
