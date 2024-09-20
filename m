Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC50F9F8
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726872354; cv=none; b=nXdiLhq1WpuMBzl++zc+d5ESu05OCxQa9SeYnJCc50S0hbe8z7HiH7uzoUqvEbJ9HtDtgebD28fcv++cbmCoAaoAZtnfms3Xw0MpDgof+9hzapkZHdpQi6b8yOVKKRecBqXHO0CI5h/tNi6aP/YgPw46Oey8vdxlkaqBmjr8U70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726872354; c=relaxed/simple;
	bh=z/gDSs2H7QjrIPB+H8ghkjFh+jQ9W21/5uQXIrjDS28=;
	h=To:Subject:From:Message-Id:Date; b=J13P0eJZxCKkwDJdpK6uT2P7Rfq5fakSzkV+XiZ/ngOu+AsSAN9oXqJTNL2BR5KrvpzhFKAFy2WKnEQrP/B1eodutcXnaxmcqxfPAmvE8r8KDpHDpfRWLn7gCbKOUfnqKvCJ4gc7IUlAgi+sL0J1dfaOV7RsPwBY1s4iAglpChI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jS1/JQAg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jS1/JQAg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC45EC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726872353;
	bh=z/gDSs2H7QjrIPB+H8ghkjFh+jQ9W21/5uQXIrjDS28=;
	h=To:Subject:From:Date:From;
	b=jS1/JQAg66dq0YfbRMnI1bTEeipkp65Hf2cJJTr+d5APjqdvBmFQeLpkmsZDJ7JGa
	 ScBzsrXKm+6UoRbz0jZSrtELCqI/JuyI9vyBnw5JJIJrMwzjYrT7SuO0yw7z870esb
	 0JyX7WT2/Hmbv1VILiXNu1FQFRIPuqhn/lZysaMx1Ui3wTojLveu91+CeUjut1vsWp
	 mARQdXx0tyOo2M9dvyBRei3PKeKlwz01A59V6cN9j/DKlhwort/89/aiMoQ3TjfCnC
	 wNGrKjyYr+nhstzjVpjVpJIA07mPzeEfkd5D+lNi8BX6qZ/NCpQhJ1+RQmez6TBxxD
	 EQgiujKxWLIwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE2CF9C68
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172687235359.30888.15741000955095548717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6cbdbef30565f513d87a668529a9ac820dd97b3b2401245f3af47d16a13ab446
Date: Fri, 20 Sep 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726872353
