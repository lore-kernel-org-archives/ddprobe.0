Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AD14A21
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744079394; cv=none; b=DuGUKsCuM61cNRCJuNOUGsHvbdKokRSEr8R5uPsFQ+UuggPS1kYBJsw0m4ar/5kSXIa2XwlgCZS+Z00spF++dPG8bg4ajgfirFFy+u5z4MdfXZzHr3OVZ0WvxZt2d1pO+3rA8eMWlCkDUgbKBq8c0WtjgJQ+0GKsAK0U5lLf5O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744079394; c=relaxed/simple;
	bh=wJyhEM3u4PrhmWAcDAO510vcObrVqOMMOlRQVj+KdrI=;
	h=To:Subject:From:Message-Id:Date; b=AOct0z/BmjjGY4gtGXJM7FnNHuCKHBnl3vnTaLeFADmuk+GtYx+nTuaKnjLYoYtZdkpPNcq9z92evQZmd61QnpOIUEi9n8w1sTN3x3tgYMnfL8rUQL8pbPG/CuF4W3B7VlaEgmnNwggQbW8ajmruchXelVQ4TTRFsqsnNztINEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ml8neD71; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ml8neD71"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B8FC4CEDD
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744079393;
	bh=wJyhEM3u4PrhmWAcDAO510vcObrVqOMMOlRQVj+KdrI=;
	h=To:Subject:From:Date:From;
	b=ml8neD71y6rI/hvIwWUtFJZ/tktJYXYFC9cAIH4C9emxj6lxv61jbhHZEzmXQ/alS
	 58j9zFPP99Pg078veZVR5tPmJ9DU4ZBYMF31K7QjGEBcWwBTrL9wp5goGeaFU+BMC8
	 MRBEUFLGPc3goKwOrKMufBWEw+sM8xgBgQDfcZrOpJsSkiUd5FHP4cNBNxVagfhQ6B
	 YrJwO+tZmXX3NKGM+9/18SFemA3zkKhJm9fnEICJF+dEMtIPwGBeSlzBh3RKG3qsLB
	 98nMowaHkBKue/mK+rLWuLC28ZWuEk9F2rswsFoWwPZiyCLS1uTdDAE1V/RzandMdG
	 +aiZkOpFJlwFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306AC36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174407939357.17362.9757994039785010880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f640ef1655857612d16ba26fd6dcd6f00725238ae8dacfdbd89a92a6f592193
Date: Tue, 08 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744079393
